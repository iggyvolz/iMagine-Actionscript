droneio:
	mkdir flex_sdk
	cd flex_sdk
	wget http://download.macromedia.com/pub/flex/sdk/flex_sdk_4.6.zip
	unzip flex_sdk_4.6.zip
	cd ..
	./flex_sdk/bin/mxmlc src/iMagine.as -debug=true -default-size=550,400
build:
	mxmlc src/iMagine.as -debug=true -default-size=550,400
	mkdir -p bin
	mv src/iMagine.swf ./bin
open:
	open bin/iMagine.swf
debug:
	fdb bin/iMagine.swf
