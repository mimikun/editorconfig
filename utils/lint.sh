#!/bin/bash

run_lint() {
    shellcheck ./"$1"
}

run_lint editorconfig.sh

run_lint utils/format.sh
run_lint utils/install.sh
run_lint utils/lint.sh
