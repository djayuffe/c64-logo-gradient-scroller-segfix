# DeepSeek v9 logo/gradient scroller — segfix

PAL C64 demo source with embedded dual charsets, centered logo text, gradient
colors, raster bars, SID arpeggio, and a bottom scroller.

## Build and run

```sh
acme --strict-segments -f cbm -o v9_logo_grad.prg \
  deepseek_asm_20251009_v9_logo_grad_scroller_embedded_fonts_vicfix_segfix.s
x64sc -autostart v9_logo_grad.prg
```

The source is now native ACME: unsupported `!segment`/`!end` directives were
removed, the charsets are placed at real `$2000`/`$2800` addresses, and the
missing external charset dependency and centered-row state bug were fixed.
