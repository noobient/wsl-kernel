#!/bin/bash

export ROOT="${BASH_SOURCE%/*}"
source "${ROOT}/common.sh"

export exec=$(find_exec)
"${exec}" run -it --rm --mount type=bind,source=/mnt/c,target=/c noobuntu/wsl-kernel
