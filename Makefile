PLAYCPPSDK=v0.0.2-alpha
MACSRC=https://github.com/cronos-labs/play-cpp-sdk/releases/download/$(PLAYCPPSDK)/play_cpp_sdk_Darwin_x86_64.tar.gz
WINDOWSSRC=https://github.com/cronos-labs/play-cpp-sdk/releases/download/$(PLAYCPPSDK)/play_cpp_sdk_Windows_x86_64.zip

all: prepare download

prepare:
	mkdir -p ./install/mac
	mkdir -p ./install/windows
	mkdir -p ./ThirdParty/cronosplay/lib/Mac
	mkdir -p ./ThirdParty/cronosplay/lib/Win64

download:
	cd install/mac && wget $(MACSRC)
	cd install/mac && tar xvf play_cpp_sdk_Darwin_x86_64.tar.gz
	cd install/windows && wget $(WINDOWSSRC)
	cd install/windows && unzip play_cpp_sdk_Windows_x86_64.zip
	cp install/mac/sdk/lib/* ./ThirdParty/cronosplay/lib/Mac
	cp install/windows/sdk/lib/* ./ThirdParty/cronosplay/lib/Win64



