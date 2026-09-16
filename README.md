# DeepSeek C64 v9 Segfix

PAL C64 demo with dual charsets, centered logo text, gradient colors, raster
bars, SID arpeggio, and a bottom scroller.

## Build

Requires ACME 0.97 or newer:

```sh
make
```

Output: `build/deepseek_c64_v9_segfix.prg`. Run with:

```sh
x64sc -autostart build/deepseek_c64_v9_segfix.prg
```

## Repository layout

- `deepseek_c64_v9_segfix.s` — corrected native-ACME source.
- `Makefile`, `AUDIT.md`, and `SHA256SUMS.txt` — build, audit, and integrity data.

## Audit summary

Unsupported directives, the missing charset dependency, font/code overlap, and
centered-row state loss were repaired. Charset placement remains `$2000`/
`$2800`, with no external build inputs.
