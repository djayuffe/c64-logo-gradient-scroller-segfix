# C64 v9 Segfix

![C64 effect preview](docs/preview.png)

Visual preview asset for this effect; run the VICE command below for an emulator capture.

PAL C64 demo with dual charsets, centered logo text, gradient colors, raster
bars, SID arpeggio, and a bottom scroller.

## Build

Requires ACME 0.97 or newer:

```sh
make
```

Output: `build/c64_logo_gradient_scroller_segfix.prg`. Run with:

```sh
x64sc -autostart build/c64_logo_gradient_scroller_segfix.prg
```

## Repository layout

- `c64_logo_gradient_scroller_segfix.s` — corrected native-ACME source.
- `Makefile`, `AUDIT.md`, and `SHA256SUMS.txt` — build, audit, and integrity data.

## Audit summary

Unsupported directives, the missing charset dependency, font/code overlap, and
centered-row state loss were repaired. Charset placement remains `$2000`/
`$2800`, with no external build inputs.
## Documentation and license

Function-level documentation is in docs/FUNCTIONS.md. The project is released
under GPL-3.0; see LICENSE.
