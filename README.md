## alstamber's dotfiles

### Clone dotfiles
~~~bash
xcode-select --install  # OS X
git clone git@github.com:alstamber/dotfiles.git
~~~

### Install Apps (via homebrew, only OS X)
~~~bash
sh dotfiles/brew-install.sh
~~~

### Install dotfiles
~~~bash
sh dotfiles/install.sh
~~~

### Change shell
~~~bash
chsh -s /bin/zsh
~~~

### Configure vim
~~~bash
vim
vim -c NeoBundleInstall!
~~~
