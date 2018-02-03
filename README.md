# lineend plugin

This is a simple plugin to switch between DOS and Unix line endings (CRLF versus LF). I was surprised micro didn't come with this functionality so I wrote it myself.

## Keybindings

By default there are no keybindings. Place the following in your `bindings.json` file:

```
{
	"CtrlAltD": "lineend.unix2dos"
}
```

Currently only two functions exist, `dos2unix` and `unix2dos`. 

## Options

There is only one option, `lineend-autosave`. If this option is set to true, running the command will save the buffer after doing the conversion. You can enable this by pressing Ctrl-E and typing `set lineend-autosave true` at the prompt.