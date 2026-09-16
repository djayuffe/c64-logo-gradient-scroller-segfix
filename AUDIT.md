# Audit record

The supplied segfix source failed ACME because it used ld65-style `!segment`
and `!end` directives and referenced a missing `custom_charset_1bpp.bin`.
It also emitted the embedded charsets through `!pseudopc`, which placed their
bytes at the current output address instead of the VIC addresses and allowed
the later helper routine to overlap the font.

Repairs:

- replaced unsupported directives with native ACME layout;
- emitted charset A at `$2000` and charset B at `$2800`;
- moved `VIC_BankFix` before the font segments;
- disabled CIA IRQ sources during startup;
- preserved the requested text row and color while centering strings.

Validation: ACME `--strict-segments` succeeds with no external input files.
Corrected build SHA-256: `cb120e887fe74f7a9d2e4383ec1b3f38b34d2ef8bc5cfb2972583ae8a6346318`.
