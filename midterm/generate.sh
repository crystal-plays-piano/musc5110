#!/bin/bash

usage() {

  cat <<EOF


Usage: $0 [options]

-h| shows this message

-l| sets the length of the flat random generation in sounds
-v| sets the number of voices
-s| sets the length of the markov bank used for generation
-c| sets the length of the generated markov chain

ALL ARGUMENTS ARE OPTIONAL AND MAY BE DECLARED IN ANY ORDER

example:    $0 -l 36 -c 20 -s 4

EOF

}

while getopts ":l:s:v:c:h" opt; do
  case "$opt" in
  l)
    LENGTH="${OPTARG}"
    ;;
  v)
    VOICES="${OPTARG}"
    ;;
  s)
    SIZE="${OPTARG}"
    ;;
  c)
    CHAIN="${OPTARG}"
    ;;
  h)
    usage
    exit 1
    ;;
  \?)
    echo "Invalid option: -$OPTARG, see ./generate.sh -h for usage documentation"
    exit 1
    ;;
  esac
done

shift $((OPTIND - 1))

pushd python || exit
python midterm.py --flatsize "${LENGTH:-40}" --numvoices "${VOICES:-3}" --mkvsize "${SIZE:-12}" --chain "${CHAIN:-20}"
popd || exit

pushd latex || exit
lilypond-book --format=latex midterm.tex --output lilyrender
popd || exit

pushd latex/lilyrender || exit
pdflatex midterm.tex
popd || exit

cp latex/lilyrender/midterm.pdf assignment-print.pdf
