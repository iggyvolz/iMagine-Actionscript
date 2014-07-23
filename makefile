build: generate-version-file
	mxmlc src/iMagine.as -debug=true -default-size=550,400
	mkdir -p bin
	mv src/iMagine.swf ./bin
open:
	open bin/iMagine.swf
debug:
	fdb bin/iMagine.swf
test: build-test
	fdb bin/Tests.swf
build-test: generate-version-file
	mxmlc src/Tests.as -debug=true -default-size=550,400 -sp=./asunit/asunit-3.0/src
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
drone-io: generate-version-file
	git submodule update --init --recursive
	mkdir flex_sdk
	cd flex_sdk
	wget http://download.macromedia.com/pub/flex/sdk/flex_sdk_4.6.zip
	unzip flex_sdk_4.6.zip
	cd ..
	./flex_sdk/mxmlc src/iMagine.as -debug=true -default-size=550,400
	mkdir -p bin
	mv src/iMagine.swf ./bin
	./flex_sdk/mxmlc src/Tests.as -debug=true -default-size=550,400 -sp=./asunit/asunit-3.0/src
	mkdir -p bin
	mv src/Tests.swf ./bin
