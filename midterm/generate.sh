#!/bin/bash

pushd python || exit
python midterm.py
popd || exit

pushd latex || exit
lilypond-book --format=latex midterm.tex --output lilyrender
popd || exit

pushd latex/lilyrender || exit
pdflatex midterm.tex
popd || exit

pushd lilypond || exit
lilypond *.ly
rm *.pdf

popd || exit

cp latex/lilyrender/midterm.pdf assignment-print.pdf

cp lilypond/*.midi ./midi-files
