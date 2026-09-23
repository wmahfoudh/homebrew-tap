# Homebrew tap

Homebrew recipes for my apps.

## Oryx

[Oryx](https://github.com/wmahfoudh/oryx) is a fast a fast, native and beautiful desktop viewer & editor for markdown and code with PDF export and eBooks rendering.

```
brew install --cask wmahfoudh/tap/oryx
```

Oryx is not notarized by Apple, so macOS refuses the first open. Open System Settings, Privacy & Security, and click Open Anyway. This is needed once.

- `brew upgrade --cask oryx` installs a new release
- `brew uninstall --cask oryx` removes it
- `brew uninstall --zap --cask oryx` also removes the settings and the image cache
