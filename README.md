# my-tmux-config

This is my personal tmux configuration.

## Installation:

    mv .tmux.conf .tmux.conf_BAK
    ln -s $HOME/git/my-tmux-config/dot_tmux.conf $HOME/.tmux.conf

Reload tmux config:

    <prefix> + r

Or on the console:

    tmux source-file ~/.tmux.conf

## Help:

Start tmux:

    tmux

    tmux new -s session_name

List sessions:

    tmux ls

Reattach to a session:

    tmux attach
    
    tmux a -t session_name

Bind-key: 
    
    <Ctrl> + s

Commands:

    d                       - detach session
    $                       - rename session
    r                       - reload config

    %  |  \                 - split vertically (same path)
    "  -                    - split horizontally (same path)
    o                       - switch panes
    ]  [                    - swap pane down/up
    <Arrow>                 - resize pane (5 cells)
    <Alt> + <Arrow>         - switch panes (no prefix)
    <Alt> + h/j/k/l         - switch panes vi-style (no prefix)
    x                       - close pane

    c                       - create new window (same path)
    n                       - next window
    w                       - list windows
    Space                   - toggle last window
    &                       - close window

    s                       - open session menu
    C-Space                 - switch to last session

    Enter                   - enter copy/scroll mode

Within copy mode (vi):

    v                       - begin selection
    y                       - yank (copy) selection
    p / P                   - paste buffer (outside copy mode)

Within the session menu:

    :kill-session           - kill selected session
    :new -t <name>          - new session


## Links

- https://builtin.com/articles/tmux-config
