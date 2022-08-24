#!/usr/bin/env make

ARGS=-Xswiftc "-sdk" -Xswiftc "`xcrun --sdk iphonesimulator --show-sdk-path`" -Xswiftc "-target" -Xswiftc "x86_64-apple-ios13.0-simulator"

all:
	xcrun swift build ${ARGS} -v

prototypes:
	scripts/codegen.sh

clean:
	xcrun swift package clean -v
