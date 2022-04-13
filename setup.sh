#!/bin/bash
die() {
  echo "$0: error: $*" >&2
  exit 1
}

deactivate 2>/dev/null
rm -rf env
pyenv exec python -m venv env || die "could not set up venv"
. env/bin/activate

pip install -U pip || die "failed to install pip!"
pip install -U wheel || die "failed to install wheel!"
pip install -r requirements.txt || die "failed to install pip requirements!"
