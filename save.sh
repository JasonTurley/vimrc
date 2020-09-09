#!/bin/bash

LOCAL=$(pwd)/.vimrc
GLOBAL=~/.vimrc

cp $LOCAL $GLOBAL && echo "saved $LOCAL (local) to $GLOBAL (global)"
