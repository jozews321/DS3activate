#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
if ./DS3activate | grep -q 'rumbling'
then
  osascript -e 'display notification "Should be rumbling!" with title "DS3activate" subtitle "DualShock 3 Enabled"'
else
osascript -e 'display notification with title "DS3activate" subtitle "No DualShock 3 gamepads found!"'
fi
