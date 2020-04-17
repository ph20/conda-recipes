#!/bin/bash

$PYTHON setup.py install --single-version-externally-managed --record record.txt

cd $PREFIX/bin || exit 1