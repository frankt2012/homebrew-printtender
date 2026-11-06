# PrintTender

A Homebrew tap for [PrintTender](https://github.com/frankt2012/PrintTender), an
offline-first maintenance tracker for 3D printers.

```bash
brew tap frankt2012/printtender
brew install --cask printtender
```

The cask installs `PrintTender.app` from the release's disk image. macOS does not
self-update it: PrintTender's own **Settings → Updates** checks GitHub and mounts a
newer DMG when one exists.

## Updating the cask

Each PrintTender release pins a version and checksum here. After publishing:

```bash
shasum -a 256 PrintTender-<version>.dmg
```

Set `version` and `sha256` in `Casks/printtender.rb`, commit, and push.
