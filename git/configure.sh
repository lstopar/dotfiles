#!/bin/bash

# configure git to autocorrect your typos
git config --global help.autocorrect 30
# cache credentials for 1 hour once entered
git config --global credentail.helper 'cache --timeout=3600'

# set colors to git status
git config --global color.status.added 'green'
git config --global color.status.changed 'magenta'
git config --global color.status.untracked 'white'
