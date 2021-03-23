#!/usr/bin/env bash
set -ex

echo 'Running test'

curl -sS http://dependency/hello.html

echo 'Done'
