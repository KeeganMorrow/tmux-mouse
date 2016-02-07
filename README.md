#Tmux-mouse

This is a tmux plugin to correctly set mouse settings based on the detected Tmux version. This was created to address the changes in how mouse configuration was handled in Tmux v2.1.

# Explanation

Prior to Tmux 2.1 there were a number of Tmux settings that dealt with mouse behavior. With 2.1 things have been simplified so that there is a single setting to enable mouse control. While this change is probably for the best, it does create a compatibility problem for people that use diferent versions in different places (but share a configuration file). This plugin aims to help deal with that!

If this looks familiar, then maybe this plugin will help!
```
/home/username/.tmux.conf:89: unknown option: mode-mouse
/home/username/.tmux.conf:90: unknown option: mouse-select-pane
/home/username/.tmux.conf:91: unknown option: mouse-select-window
/home/username/.tmux.conf:92: unknown option: mouse-resize-pane
```

# The Settings
These are the settings that this plugin will apply for each version of Tmux. If you already have these settings in your tmux.conf then they should be removed.
## For Tmux 2.1 and later
```
set -g mouse on
```

## For Tmux Pre-2.1
```
set -g mode-mouse on
set-option -g mouse-select-pane on
set-option -g mouse-select-window on
set-option -g mouse-resize-pane on
```

## Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```
set -g @plugin 'Korrow/tmux-mouse'
```

Hit `prefix + I` to fetch the plugin and source it. You should be able to use the mouse regardless of Tmux version, and without annoying startup errors.

## License

Licensed under [MIT](LICENSE.md)
