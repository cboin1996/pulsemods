#!/bin/bash

pactl load-module module-null-sink sink_name=obsnull
pactl load-module module-combine-sink sink_name=obscombined slaves=obsnull,$1

