# my-tmux-config

Installation:

    mv .tmux.conf .tmux.conf_BAK
    ln -s $HOME/git/my-tmux-config/dot_tmux.conf $HOME/.tmux.conf

Help:

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

    d                   - detach session
    $                   - rename session

    %                   - split vertically
    "                   - split horizontally
    o                   - switch panes
    <Arrow>             - switch panes
    <Alt> + <Arrow>     - resize panes
    x                   - close pane

    c                   - create new window
    n                   - next window
    p                   - previous window
    w                   - list windows
    &                   - close window

    s                   - open session menue

Within the session menu:

    :kill-session        - kill selected session
    :new -t <name>       - new session

