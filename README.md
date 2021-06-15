# tmux-spotify-info
This is a fork of [feqzz's tmux-info](https://github.com/feqzz/tmux-spotify-info) plugin meant to be used with spt (spotify-tui)
It's merely a quick and dirty replica that adjusts the files accordingly

### Installation with Tmux Plugin Manager
Edit your `.tmux.conf` and append the plugin to your TPM list.

```tmux
set -g @plugin 'spookdot/tmux-spotify-info'
```
Remember to hit `<prefix> + I` to install the plugin.

### Manual
Clone the repo:
``` bash
git clone https://github.com/spookdot/tmux-spotify-info ~/.tmux/
```
Edit your `.tmux.conf` and add this line at the bottom.
``` bash
run-shell ~/.tmux/tmux-spotify-info/tmux-spotify-info.tmux
```
Last step is to reload the tmux config file.
``` bash
tmux source-file ~/.tmux.conf
```

## Usage
Edit your `.tmux.conf` file and add `#{mpv_info}` to your `status-right`. Simple example:
``` tmux
set -g status-right "#{spotify_info}"
```
As the length of some song titles can be very long, it can be useful to add this line to your `.tmux.conf` to avoid overflow.
``` tmux
set -g status-right-length 200
```
## License
[MIT](LICENSE.md)
