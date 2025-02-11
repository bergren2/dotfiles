[![Build Status](https://travis-ci.com/bergren2/dotfiles.svg?branch=master)](https://travis-ci.com/bergren2/dotfiles)

# ohai .vim

My Vim files.

## Prereqs

You'll need [Homebrew](http://brew.sh), [Git](https://help.github.com/articles/generating-ssh-keys/),
and Node set-up. The install guides linked above should be pretty self-explanatory,
and you can use Homebrew to install your dependencies. And when you install
Xcode (from the App Store), you'll need to accept their terms from the terminal
using

    $ sudo xcodebuild -license

## Installation

First, install [JetBrainsMono Nerd Font](https://www.nerdfonts.com/).
It's a nice font that supports Powerline characters.

Next,

    $ brew bundle
    $ rbenv install
    $ npm install -g jsxhint eslint

Then the easy part:

    $ mkdir ~/.vim
    $ ruby install.rb
    $ mkdir autoload
    $ vim +PlugInstall

## Updating

    $ vim +PlugInstall

### Troubleshooting

If Vim crashes due to Python errors, make sure you have Python installed before
compiling YouCompleteMe or installing Homebrew Vim. MacOS ships with Python, but
this could also be due to [pyenv](https://github.com/pyenv/pyenv) madness.

[rbenv](https://github.com/rbenv/rbenv) and [nodenv](https://github.com/nodenv/nodenv)
madness exist as well. Proceed with caution.

If you're trying to do a clean reinstall of vim + plugins, be sure to wipe out
the `plugged` directory.

## Post Install

If you care, you can make sure Git uses the right Vim for editing commit
messages.

    $ git config --global core.editor "vim"

## What about Java?

For Java we use Eclipse. You should install it using [Homebrew Cask](http://caskroom.io/).
Then go to "Help > Install New Software..." and enter in the URL
"http://vrapper.sourceforge.net/update-site/stable". Check the options you'd
like and then you're good to go! Also make sure to change the Eclipse editor
keys to use the Vim configuration.

You can also install the Eclipse Color Plugin ("http://eclipse-color-theme.github.io/update")
for theming.

## What about .NET?

For .NET and other Windows-y languages, we use Visual Studio or Rider.

### Visual Studio

[Community](https://www.visualstudio.com/en-us/downloads/download-visual-studio-vs.aspx) should do the trick but if you need Pro or Ultimate you'll need to contact your school, work, etc. If you need Visual Studio to build but don't actually want to use it, you can use the [Visual Studio Build Tools](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2022).

Here are some extensions you might want to install:
- https://github.com/jaredpar/VsVim
- https://github.com/laurentkempe/GitDiffMargin
- https://github.com/pharring/EditorGuidelines

You also probably want [ReSharper](https://www.jetbrains.com/resharper/).

### Rider

Rider has everything you want built-in already! And you're probably already syncing your extensions to your JetBrains account. Huzzah!

## Theming

Since we try to stay consistent between editors, our theme of choice is
[Tomorrow](https://github.com/chriskempson/tomorrow-theme) by Chris Kempson.
It's available for Vim, Eclipse, Visual Studio, and a lot of other editors you
might use.

## License

See LICENSE for details.
