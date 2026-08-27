# Custom Bluefin (GNOME) Image

test bluefin 8

This repository builds a custom bootc image on GitHub Actions.

| Setting | Value |
|---------|-------|
| Repository | `Danathar/bluefin-test8` |
| Base Image | `Bluefin (GNOME)` |
| Base Image URI | `ghcr.io/ublue-os/bluefin:stable` |
| Published Image | `ghcr.io/danathar/bluefin-test8:latest` |
| Build Method | `Containerfile` |

## Managed By Atomic Image Builder

This repo is managed by `atomic-image-builder`. `.atomic-image-builder.json` is the saved settings file and source of truth for future updates.

If you hand-edit this repo after `atomic-image-builder` creates or manages it, stop using `atomic-image-builder` for this repo.

Later tool-driven updates rewrite managed files and can overwrite manual changes, especially `README.md` and `build_files/build.sh`.

## Requested Packages

These are the package names requested by this repo's generated build script.
Selected packages are what this repo will attempt to add, even if some are already present in the chosen base image.

- `age`
- `borgbackup`
- `cockpit`
- `fish`
- `gparted`
- `iotop`
- `iperf3`
- `lm_sensors`
- `mtr`
- `ncdu`
- `nethack`
- `nmap`
- `powertop`
- `rclone`
- `restic`
- `smartmontools`
- `tmux`
- `virt-manager`
- `wireguard-tools`
- `zsh`

## COPR Repositories

- None.

## Enabled Services

- None.

## Removed Base Packages

- None.

## Using The Image

This repo carries over package changes scanned from your current system.
Run these commands in the same session before rebooting:

```bash
sudo rpm-ostree reset
sudo bootc switch ghcr.io/danathar/bluefin-test8:latest
systemctl reboot
```

Do not reboot between `rpm-ostree reset` and `bootc switch`.
