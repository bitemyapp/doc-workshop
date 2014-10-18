#!/bin/sh

# https://twitter.com/mwotton made this. Send him love.

inotifywait -m -r . -e CLOSE_WRITE | grep --line-buffered "\.md$" | grep -v --line-buffered flymake | collapse | while read x; do make && printf "\n *** Build succeeded! *** \n"; done
