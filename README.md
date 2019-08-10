# .dotfiles

Quick and painless unix terminal configs for productivity.
A bundle of [other](https://github.com/amix/vimrc)
[awesome](https://github.com/gpakosz/.tmux)
[projects](https://virtualenvwrapper.readthedocs.io/en/latest/)

## Installation

```bash
cd ~
git clone https://github.com/sinyovercosy/.dotfiles.git
cd .dotfiles
sh setup.sh
```

## Keybinds
### bash
Run `alias` to see commands

### vim
The `<leader>` is `,`
```
<leader> ?                # help for basic vim keybinds
jk                        # shortcut for <esc>
gcc                       # toggle comment on current line
10gcc                     # toggle comment for 10 lines
gc                        # toggle comment for selection
<leader> nn               # open file explorer for current dir
<leader> j  or  C-f       # find and open files in current dir
<leader> f                # open recently opened files
<leader> o                # view, switch, kill buffers (tabs)
<leader> h                # switch to prev. buffer
<leader> l                # switch to next buffer
<leader> bd               # kill current buffer
<leader> ba               # kill all (up to 1000) buffers
<leader> z                # focus mode (hide tabs and status)
<leader> w                # quick save (force)
<leader> cd               # change working dir to current file
<space>  or  <c-space>    # search and backwards search
<leader> <cr>             # disable search highlighting
<leader> pp               # toggle paste mode on / off
<leader> r                # search and replace current selection
C-h C-j C-k C-l           # navigate splits incl. tmux panes
```

### tmux
The `<prefix>` is `C-a` (<kbd>Ctrl</kbd> + <kbd>a</kbd>) *inside tmux*.
The default `<prefix>` <kbd>Ctrl</kbd> + <kbd>b</kbd> can also be used.
```
tmux                       # new session
<prefix> C-c               # new session
<prefix> d                 # detach from tmux (back to terminal)
tmux a                     # attach to last session
<prefix> $                 # name session
<prefix> C-f               # find session by name
tmux a -t name             # attach to named session
tmux kill-session -t name  # kill named session
pkill -f tmux              # kill tmux
<prefix> c                 # new window (tab)
<prefix> C-h               # prev. window
<prefix> C-l               # next window
<prefix> Tab               # last window
<prefix> &                 # kill window
<prefix> -                 # new vertical split (pane)
<prefix> _                 # new horiztonal split
C-h C-j C-k C-l            # navigate panes incl. vim splits
<prefix> {HJKL}            # resize panes
<prefix> x                 # kill current pane (with confirm)
<prefix> +                 # maximize current pane into new window
<prefix> m                 # toggle mouse on/off
```

### virtualenvwrapper
Go read the
[docs](https://virtualenvwrapper.readthedocs.io/en/latest/install.html#quick-start).
```bash
mkvirtualenv my_awesome_project
pip install ...
deactivate
workon my_awesome_project
```

