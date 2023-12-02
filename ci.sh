#!/bin/bash
set -e
xcodebuild -project 'Sports.xcodeproj' -scheme 'Sports' -destination 'platform= iOS Simulator' test
