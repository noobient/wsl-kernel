#!/bin/bash

export ROOT="${BASH_SOURCE%/*}"
source "${ROOT}/common.sh"

export exec=$(find_exec)
"${exec}" build -t noobuntu/wsl-kernel .
