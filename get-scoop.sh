#!/bin/sh
set -e
SCRIPT_DIR=$( cd "$(dirname "$0")" || exit 1; pwd -P )
pwsh "$SCRIPT_DIR"/install.ps1
