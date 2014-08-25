build: generate-version-file
	$(FLEXPATH)mxmlc src/iMagine.as -debug=true -default-size=550,400
	mkdir -p bin
	mv src/iMagine.swf ./bin
open:
	open bin/iMagine.swf
debug:
	$(FLEXPATH)fdb bin/iMagine.swf
test: build-test
	$(FLEXPATH)fdb bin/Tests.swf
build-test: generate-version-file
	$(FLEXPATH)mxmlc src/Tests.as -debug=true -default-size=550,400
	mkdir -p bin
	mv src/Tests.swf ./bin
generate-version-file:
	rm -f src/iMagineVersion.as
	touch src/iMagineVersion.as
	printf "package {public class iMagineVersion{public static const COMMIT_HASH:String=\"">>src/iMagineVersion.as
	git log -1 --pretty=%H|tr -d '\n'>>src/iMagineVersion.as
	printf "\";public static const COMMIT_MSG:String=\"">>src/iMagineVersion.as
	git log -1 --pretty=%B|tr -d '\n'>>src/iMagineVersion.as
	printf "\";public static const GIT_DESCRIBE:String=\"">>src/iMagineVersion.as
	git describe --tags|tr -d '\n'>>src/iMagineVersion.as
	printf "\"}}">>src/iMagineVersion.as
generate-tests:
	./testmaker
drone-io: drone-io-prepare build build-test drone-io-archive
drone-io-prepare:
	mkdir flex_sdk
	wget -q http://download.macromedia.com/pub/flex/sdk/flex_sdk_4.6.zip
	unzip -q flex_sdk_4.6.zip -d flex_sdk
drone-io-archive:
	if [ "`git rev-parse --abbrev-ref HEAD`" = "master" ]; then mv bin/Tests.swf bin/Tests-master.swf;mv bin/iMagine.swf bin/iMagine-master.swf;else wget https://drone.io/github.com/iggyvolz/iMagine/files/bin/iMagine-master.swf;mv iMagine-master.swf bin;wget https://drone.io/github.com/iggyvolz/iMagine/files/bin/Tests-master.swf;mv Tests-master.swf bin;fi
send:
	curl --silent -H "Authorization: token $(GITHUB_TOKEN)" https://api.github.com/repos/iggyvolz/iMagine/statuses/$(shell git rev-parse HEAD) --data "{\"state\":\"$(status)\"}">>/dev/null
