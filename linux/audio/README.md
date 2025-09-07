# Linux - Audio

## Virtual audio source

### PipeWire

Check if you are using PipeWire:

```sh
ps -e | grep -E 'pipewire|pulseaudio'
```

Install libraries:

```sh
sudo apt install pipewire-audio-client-libraries
```

Add permanent virtual audio source:

```sh
mkdir -p ~/.config/systemd/user
vim ~/.config/systemd/user/pw-loopback.service
```

Add the following code:

```
[Unit]
Description=PipeWire Loopback (Reaper Virtual Device)
After=pipewire.service

[Service]
ExecStart=/usr/bin/pw-loopback \
    --capture-props='node.description=Reaper-Output' \
    --playback-props='node.description=Reaper-Virtual-Sink'
Restart=on-failure

[Install]
WantedBy=default.target
```

Enable it:

```sh
systemctl --user daemon-reload
systemctl --user enable pw-loopback.service
systemctl --user start pw-loopback.service
```

Check status:

```sh
systemctl --user status pw-loopback.service
```

Make virtual device show up:

```sh
mkdir -p ~/.config/systemd/user
vim ~/.config/systemd/user/voice-null-sink.service 
```

Add the following code:

```
[Unit]
Description=Voice Virtual Sink (null sink for routing audio)
After=pipewire-pulse.service
Requires=pipewire-pulse.service

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/bin/bash -lc 'mkdir -p ~/.cache && pactl load-module module-null-sink sink_name=VoiceSink sink_properties=device.description="Voice Virtual Sink" | tee ~/.cache/voice-null-sink.id'
ExecStop=/usr/bin/bash -lc 'id=$(cat ~/.cache/voice-null-sink.id 2>/dev/null || true); [ -n "$id" ] && pactl unload-module "$id" || true'

[Install]
WantedBy=default.target
```

Enable:

```sh
systemctl --user daemon-reload
systemctl --user enable voice-null-sink.service
systemctl --user start voice-null-sink.service
```

Check status:

```sh
systemctl --user status voice-null-sink.service
```

## Restart audio

```sh
systemctl --user restart pipewire pipewire-pulse
```
