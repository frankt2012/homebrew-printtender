# PrintTender

A Homebrew tap for [PrintTender](https://github.com/frankt2012/PrintTender), an
offline-first maintenance tracker for 3D printers.

```bash
brew tap frankt2012/printtender
brew trust frankt2012/printtender    # third-party taps are untrusted by default
brew install --cask printtender
```

The cask installs `PrintTender.app` from the release's disk image. macOS does not
self-update it: PrintTender's own **Settings → Updates** checks GitHub and mounts a
newer DMG when one exists.

The app is not notarized, so the first launch is blocked by Gatekeeper: right-click
the app in Finder and choose **Open** once, or run

```bash
xattr -dr com.apple.quarantine /Applications/PrintTender.app
```

## Updating the cask

Each PrintTender release pins a version and checksum here. After publishing:

```bash
shasum -a 256 PrintTender-<version>.dmg
```

Set `version` and `sha256` in `Casks/printtender.rb`, commit, and push.
