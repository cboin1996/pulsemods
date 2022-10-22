# pulsemods
Tiny little pulseaudio mod for adding a null sink. Useful for streaming games on linux.

## Installation
Run
```bash
chmod +x setup_pulse.sh
chmod +x unload_pulse.sh
make installzsh default_sink=alsa_output.pci-0000_00_1f.3.analog-stereo
```

## Uninstall
Run
```bash
make clean
```

## Usage
Enable the null sink:
```bash
psetup
```
Remove the null sink
```bash
prevert
```

## Examples

For OBS studio, you can add an audio device and select the `Combined Null` output thats created by `psetup.`
Next, in `pavucontrol` you can select the output and what it plays on:

   - Your normal output sink (hear the sound, do not stream it
   - Null output sink -- stream the sound, but do not hear it
   - Combined sink -- stream AND hear the sound.
