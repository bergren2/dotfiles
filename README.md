# ohai .vim

My Vim files. Please mind the dust, especially as we make our way over to the
[dotfiles](https://github.com/bergren2/dotfiles) project repo.

## Installation

First, install [Source Code Pro for
Powerline](https://github.com/Lokaltog/powerline-fonts/tree/master/SourceCodePro).
It's a patched version of Adobe's Source Code Pro font to work with Airline.

Next,

    $ brew install python
    $ brew install macvim --override-system-vim

At this point I check to make sure I have `+python` enabled so YouCompleteMe works.
This is easy to do via `vim --version`.

Also necessary for YouCompleteMe:

    $ brew install cmake

Then the easy part:

    $ git clone git@github.com:bergren2/dotvim.git ~/.vim
    $ cd $_
    $ ruby install.rb
    $ git clone https://github.com/gmarik/vundle.git bundle/Vundle.vim
    $ vim +PluginInstall +qall

And finally, the rest of YouCompleteMe:

    $ cd bundle/YouCompleteMe
    $ ./install.sh --clang-completer

### Troubleshooting

If Vim crashes due to Python errors, make sure you've installed MacVim and
re-compiled YouCompleteMe with Homebrew Python installed first.

## Post Install

If you care, you can make sure Git uses the right Vim for editing commit
messages.

    $ git config --global core.editor "vim"

## What about Java?

For Java we use Eclipse. You should install it using [Homebrew Cask](http://caskroom.io/).
Then go to "Help > Install New Software..." and enter in the URL
"http://vrapper.sourceforge.net/update-site/stable". Check the options you'd
like and then you're good to go! You an also install the Eclipse Color Plugin
("http://eclipse-color-theme.github.io/update") and then download/add the [Molokai](http://eclipsecolorthemes.org/?view=theme&id=3908).
