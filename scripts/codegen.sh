#!/usr/bin/env bash 

xcrun xcodebuild -resolvePackageDependencies

sourcery -v --disableCache  --sources .build/checkouts/aepsdk-core-ios/AEPCore/Sources/core/MobileCore.swift  --templates ./templates --output Sources/AEPProtocols/AEPCoreProtocols.swift

if ! [ -x "$(command -v swiftformat)" ]; then
  echo 'swiftformat not installed, skipping formatting'
  exit 1
fi

swiftformat Sources 

