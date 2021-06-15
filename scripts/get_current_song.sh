#!/usr/bin/env bash

if [ $(pidof spotifyd | wc -l) -eq 0 ]
then
	exit 0
fi

SONG_TITLE=$(spt pb)

GREEN='#[fg=colour34]'
DEFAULT='#[default]'

printf "${GREEN}${DEFAULT}$SONG_TITLE"
