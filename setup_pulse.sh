#!/bin/bash
# Simple script for setting up null and  combined sink in pulse audio.
# Arguments:
#  - $1 - first positional argument which is the default audio sink's name
obsnullsinkname=obsnull
pactl load-module module-null-sink sink_name=$obsnullsinkname
echo Created null sink with idx $obsnullsinkname
pactl load-module module-combine-sink sink_name=obscombined slaves=$obsnullsinkname,$1
echo Combined null sink $obsnullsinkname with $1

