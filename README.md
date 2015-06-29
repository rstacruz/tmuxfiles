## Command reference

    $ tmux -u                # utf8-enabled mode
    $ tmux attach

    $ tmux new -s poop       # Named sessions
    $ tmux attach -t poop

## Key reference

General:

    ^B?        - Help

tpm:

    ^B I       - install

tmux-sensible:

    ^B R       - Reload config
    ^B ^n      - next tab
    ^B ^p      - prev tab

tmux-pain-control:

    ^B hjkl       - select pane left/down/up/right
    ^B shift hjkl - resize panes
    ^B |          - split horizontal
    ^B -          - split vertical

Navigating:

    ^B0 to ^B9 - Switch windows
    ^B o       - Move to next pane
    F1 / F2    - Next/previous window
    ^B n       - Next window
    ^B p       - Previous window
    ^B q       - Show numbers

Creating:

    ^B c       - New window
    ^B !       - Breakout pane into new window
    ^B %       - Split vertical   (also ^B v)
    ^B "       - Split horizontal (also ^B s)

Organizing:

    ^B Space   - Cycle layout styles
    ^B Alt1    - Tile horizontal
    ^B Alt2    - Tile vertical
    ^B M-o     - Rotate which'll be the main window
    ^B {       - Move pane

Resizing:

    ^B AltLeft - Resize

Management:

    ^B ,      - Rename tab
    ^B '      - Select tab by name
    ^B $      - Rename session
    ^B )      - Go to next session
    ^B *      - Kill session

Scrolling:

    ^B [      - Scroll mode (exit with q)

Copying:

    ^B[, space to select, enter to copy, ^B] to paste
    ^Bc to copy to system clipboard

    bind -r    - Repeatable
    bind -n    - No prefix
