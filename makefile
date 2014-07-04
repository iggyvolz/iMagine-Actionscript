build:
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
