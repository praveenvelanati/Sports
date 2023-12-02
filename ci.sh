#!/bin/bash
set -e
xcodebuild clean -project 'Sports.xcodeproj' -scheme 'Sports' -destination 'platform= iOS Simulator'
