#! /bin/sh

ANNEX=~/annex

git ls-files | sed 's=[^/]*$==' | uniq | sed '/^$/d' | \
    xargs -I{} rsync -avz {} ${ANNEX}/software/slackbuilds/{}
