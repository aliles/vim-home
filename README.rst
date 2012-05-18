Vim Home
========

This is my *Vim* home directory. It contains both my vimrc file and the
plugins I currently have installed. It consists of a number of custom settings,
`Pathogen <https://github.com/tpope/vim-pathogen>`_ for managing plugins and a
number of Git submodules of *Vim* plugins I find useful.

Intended Audience
=================

The development I do with this configuration is dominated by Python. My *Vim*
configuration reflects this. If you are not interested in Python development
then this *Vim* configuration may not be for you.

Installation
============

Clone this Github repository into your home directory as .vim. ::

    $ cd ~
    $ git clone https://github.com/aliles/vim-home.git .vim
    Cloning into .vim...

Alternatively, you may wish to fork this repository on Github first, so you may
commit your own changes to it.

Now create a symbolic link from *.vim* to the file *~/.vim/vimrc* ::

    $ ln -s .vim/vimrc .vimrc

This link will enable *Vim* to load the settings when started.

Finally, by default Git will report new files created by *Vim* in the plugin
direcotries as untracked files. This can be annoying. The following Git config
setting will change Git's behaviour to report only changed files that are
already being tracked. ::

    $ cd ~
    $ git config diff.ignoreSubmodules untracked

Alternatively the configuration options *dirty* can be used to ignore all
differences over than those between the head and master.

Updating
========

Due to the way Git submodules work, it's necessary to update the *Vim*
configuration and the *Vim* plugins seperately. ::

    $ cd ~/.vim
    $ git pull
    $ git submodule foreach git submodule init
    $ git submodule foreach git submodule update
    $ git submodule foreach git checkout master
    $ git submodule foreach git pull

*Or at least, I think that's how to do it ...*

These instructions were derived from
`Git Submodules: Adding, Using, Removing, Updating <http://chrisjean.com/2009/04/20/git-submodules-adding-using-removing-and-updating/>`_

References
==========

If setting up your *Vim* configuration, you may find the following references
useful.

* `Configuring Vim Right <http://items.sjbach.com/319/configuring-vim-right>`_
* `Vim: revisited <http://mislav.uniqpath.com/2011/12/vim-revisited/>`_
* `Turning Vim into a modern Python IDE <Turning Vim into a modern Python IDE>`_
* `The cleanest vimrc you'll ever see <http://yanpritzker.com/2012/01/20/the-cleanest-vimrc-youve-ever-seen/>`_

I found these of varying degrees of values when configuring *Vim* for myself.

Plugins
=======

The following plugins for *Vim* are installed.

* `Pathogen <https://github.com/tpope/vim-pathogen>`_, plugin manager
* `Git <http://www.vim.org/scripts/script.php?script_id=1654>`_ runtime files
* `Fugitive <http://www.vim.org/scripts/script.php?script_id=2975>`_ Git wrapper
* `Minibufexpl <http://www.vim.org/scripts/script.php?script_id=159>`_ buffer explorer
* `PEP8 <http://www.vim.org/scripts/script.php?script_id=2914>`_ Python syntax checker
* `Solarized <http://ethanschoonover.com/solarized>`_ colour scheme
