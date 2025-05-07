#!/bin/bash

if pgrep -x wf-recorder > /dev/null; then
   echo '{"text": "⏺ Recording", "class": "recording"}'
else
    echo '{"text": ""}'
fi
