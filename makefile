build-droneio:
	./flex-sdk/bin/mxmlc iMagine.as -debug=true -default-size=550,400
build:
	mxmlc iMagine.as -debug=true -default-size=550,400
	mv iMagine.swf ../bin
open:
	open ../bin/iMagine.swf
debug:
	fdb ../bin/iMagine.swf
