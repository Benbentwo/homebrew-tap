# Benbentwo's Homebrew tap

## Choo Choo

[Choo Choo](https://github.com/Benbentwo/choo-choo) runs Claude Code agents in parallel, each in its own git worktree.

```sh
brew install --cask benbentwo/tap/choo-choo
```

Releases are signed and notarized and update themselves; `brew upgrade --cask --greedy choo-choo` works too. For beta builds, install this cask and pick Settings > Updates > Update channel > Beta in the app.

`Casks/choo-choo.rb` is written by the Release workflow in Benbentwo/choo-choo on every stable release; don't edit it by hand.
