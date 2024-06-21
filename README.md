# homebrew-cyf

[![brew test-bot](https://github.com/cyf/homebrew-cyf/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/cyf/homebrew-cyf/actions/workflows/tests.yml)

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
