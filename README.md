# homebrew-cyf

[![Test](https://github.com/cyf/homebrew-cyf/actions/workflows/test.yml/badge.svg)](https://github.com/cyf/homebrew-cyf/actions/workflows/test.yml)
[![Excavator](https://github.com/cyf/homebrew-cyf/actions/workflows/excavator.yml/badge.svg)](https://github.com/cyf/homebrew-cyf/actions/workflows/excavator.yml)
[![Add version](https://github.com/cyf/homebrew-cyf/actions/workflows/version.yml/badge.svg)](https://github.com/cyf/homebrew-cyf/actions/workflows/version.yml)

## Install

```shell
brew install cyf/cyf/faforever
```

Or

```shell
brew tap cyf/cyf

brew install faforever
```

Or, in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
# Brewfile
tap "cyf/cyf"
brew "faforever"
```

## Install a specific version

If you want to install a specific release, you can include the version in the command. You can also view the list of releases [here](https://github.com/cyf/faforever/releases).

```shell
brew install cyf/cyf/faforever@0-0-1-plus-26
```

Or

```bash
brew tap cyf/cyf

brew install faforever@0-0-1-plus-26
```

## Debug

[Adding Software to Homebrew](https://docs.brew.sh/Adding-Software-to-Homebrew)

```shell
brew audit --strict --fix --cask faforever
```

[Brew Livecheck](https://docs.brew.sh/Brew-Livecheck)

```shell
brew livecheck --debug faforever
```

## Release

[How to Open a Homebrew Pull Request](https://docs.brew.sh/How-To-Open-a-Homebrew-Pull-Request)

```shell
brew bump --open-pr faforever
```

## Documentation

Your taps are Git repositories located at `$(brew --repository)/Library/Taps`

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
