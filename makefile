build: generate-version-file
	mxmlc src/iMagine.as -debug=true -default-size=550,400
	mkdir -p bin
	mv src/iMagine.swf ./bin
open:
	open bin/iMagine.swf
debug:
	fdb bin/iMagine.swf
test:
	mxmlc src/Tests.as -debug=true -default-size=550,400 -sp=./asunit/asunit-3.0/src
	mkdir -p bin
	mv src/Tests.swf ./bin
	fdb bin/Tests.swf
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
