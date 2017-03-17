# homebrew-tap [![Build Status](https://travis-ci.org/personalrobotics/homebrew-tap.svg?branch=master)](https://travis-ci.org/personalrobotics/homebrew-tap)
[Homebrew][homebrew] [tap][homebrew-tap] for [Personal Robotics Laboratory][prl] [software][prl-github]

## How do I install these formulae?

### Without tapping
```
brew install personalrobotics/tap/<formula>
```

### With tapping
Dependency and main source code formulae are available by adding this repository as a tap to your local homebrew installation:
```
brew tap personalrobotics/tap
brew install <formula>
```
If you need to drop the tap due to compatability issues, or are very particular about keeping a clean homebrew installation, you can untap this repo:
```
brew untap personalrobotics/tap
```
But note that you will not be able to upgrade any currently installed software from this tap.

### Using URL
```
brew install https://raw.githubusercontent.com/personalrobotics/homebrew-tap/master/Formula/<formula>.rb
```
But note that you will not receive updates.

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://github.com/Homebrew/brew/tree/master/docs#readme).

[homebrew]: https://brew.sh/
[homebrew-tap]: https://github.com/Homebrew/brew/blob/master/docs/brew-tap.md
[prl]: https://personalrobotics.ri.cmu.edu/
[prl-github]: https://github.com/personalrobotics/
