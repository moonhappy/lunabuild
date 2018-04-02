![Title](TITLE.svg)

Build scripts to automate LÖVE (Love2D) platform builds, with templates for popular CI services.

# INSTALL ERROR

If you recieve the following when attempting to install on macOS, such as `libfs.c:62:10: fatal error: 'lua.h' file not found`, xcode CLI will need to be updated for new search paths:

```
xcode-select --install
```

see: https://github.com/jeaye/color_coded/issues/14
