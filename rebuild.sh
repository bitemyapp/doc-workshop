#!/bin/sh

inotifywait -m -r . -e CLOSE_WRITE | grep --line-buffered "\.md$" | grep -v --line-buffered flymake | collapse | while read x; do make && printf "\n *** Build succeeded! *** \n"; done
