# Function reference

This is the segfix source converted to the same native ACME layout as the
ACME variant.

| Function | Responsibility |
|---|---|
| Start / IRQ_Init | Initializes VIC/CIA state and raster timing. |
| CenterPrintRow | Centers text and preserves caller row/color state. |
| ColorizeLogo / ColorizeRowGrad | Generates logo and row gradients. |
| InitScroller / Scroller_Tick | Runs the bottom scroller. |
| SID_Init / SID_Tick | Drives the SID arpeggio. |
| Charset_A / Charset_B | Embedded fonts at $2000 and $2800. |

No external charset or unsupported segment directives are required.
