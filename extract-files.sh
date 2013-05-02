#!/bin/sh

set -e

export DEVICE=jflteatt
export VENDOR=samsung
./../jflte-common/extract-files.sh $@
