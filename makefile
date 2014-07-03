build:
	mxmlc src/iMagine.as -debug=true -default-size=550,400
	mkdir -p bin
	mv src/iMagine.swf ./bin
open:
	open bin/iMagine.swf
debug:
	fdb bin/iMagine.swf
