# ohai .vim

My Vim files. Please mind the dust, especially as we make our way over to the
[dotfiles](https://github.com/bergren2/dotfiles) project repo.

## Prereqs

You'll need [Homebrew](http://brew.sh), [Git](https://help.github.com/articles/generating-ssh-keys/),
and Node set-up. The install guides linked above should be pretty self-explanatory,
and you can use Homebrew to install your dependencies. And when you install
Xcode (from the App Store), you'll need to accept their terms from the terminal
using

    $ sudo xcodebuild -license

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

If you're using OmniSharp for C# completion, you'll need to
[download and install](http://www.mono-project.com/download/) the latest Mono.
Homebrew's version of Mono doesn't really work well here, unfortunately.

Then the easy part:

    $ git clone git@github.com:bergren2/dotvim.git ~/.vim
    $ cd $_
    $ ruby install.rb
    $ git clone https://github.com/gmarik/vundle.git bundle/Vundle.vim
    $ vim +PluginInstall +qall

And finally, the rest of YouCompleteMe and Tern:

    $ cd bundle/YouCompleteMe
    $ ./install.py --clang-completer --omnisharp-completer
    $ cd ../tern_for_vim
    $ npm install

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
like and then you're good to go! Also make sure to change the Eclipse editor
keys to use the Vim configuration.

You can also install the Eclipse Color Plugin ("http://eclipse-color-theme.github.io/update")
and then download/add [Molokai](http://eclipsecolorthemes.org/?view=theme&id=3908).

## What about .NET?

For .NET and other Windows-y languages, we use Visual Studio. [Community](https://www.visualstudio.com/en-us/downloads/download-visual-studio-vs.aspx) should do the trick but if you need Pro or Ultimate you'll need to contact your school, work, etc.

Visual Studio also supports [Molokai](http://studiostyl.es/schemes/molokai) theming.
