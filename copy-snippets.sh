#!/bin/sh

# copy-snippets.sh
# Created by liam on 23/12/2022
#
# Script to copy Xcode code snippets between this script's location and Xcode's default code snippet save location.

# Note that we need to be careful using ~ and * in strings and cp since they don't auto-expand

codeSnippetGlob="*.codesnippet"
xcodeCodeSnippetLocation="${HOME}/Library/Developer/Xcode/UserData/CodeSnippets/"

if [ -n "${1}" ]; then
  if [ "${1}" = "--reverse" ] || [ "${1}" = "-r" ]; then
    cp -R "${xcodeCodeSnippetLocation}" .
  fi
else
  mkdir -p ${xcodeCodeSnippetLocation} && cp ${codeSnippetGlob} ${xcodeCodeSnippetLocation}
fi
