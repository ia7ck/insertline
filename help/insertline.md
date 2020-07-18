# insertline

This plugin provides InsertLineBelow and InsertLineAbove action for [micro](https://micro-editor.github.io/) editor.

## Usage

Type `insertlinbelow` in command mode, then empty line is inserted below the line which cursor located.

Meanwhile, `insertlineabove` command inserts empty line above the current line.

## Key Bindings

The default key binding to `inserlinebelow` is <kbd>Alt-Enter</kbd> and `insertlineabove` is not set.

To modify this binding, edit your `bindings.json` (placed in `~/.config/micro/` on Linux)
. For example, to bind <kbd>CtrlSpace</kbd> to `insertlineabove`, put following in `bindings.json` file.

```json
{
  "CtrlSpace": "lua:insertline.insertLineAbove"
}
```

See also [keybindings.md](https://github.com/zyedidia/micro/blob/master/runtime/help/keybindings.md) .
