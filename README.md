# Predictable Pattern of Non-primes

A study of a regular structure that appears when the primes are grouped into
intervals of the form

$$\frac{(x-1)^2}{2} < P < \frac{x^2}{2}$$

and plotted as centred horizontal segments, one per interval. In that triangle
the composites leave regular vertical "lines of no primes", which the paper
derives analytically from

$$\frac{x^2}{2} - \frac{x}{2} - i = P$$

and then uses to say something about the prime counting function $\pi(x)$.

The investigation started from the classical prime arrangements — the Klauber
triangle and the Ulam spiral — and from arranging primes along an Archimedes
spiral at varying angular rate.

## Contents

| File | Description |
| --- | --- |
| `PrimePattern.tex` | Paper source (LaTeX, `article`) |
| `PrimePattern.pdf` | Compiled paper |
| `PatternAnalysis.m` | Analysis of the observed pattern |
| `PrimePattern.m` | Generates the prime arrangements |
| `PrimCountFunc.m` | Prime counting / interval enumeration |
| `FitS.m` | Fit of the summation term |
| `theorem.m` | Numeric check of the theorem |
| `*.png` | Figures included by the paper |
| `Psum.mat`, `xydata.mat` | Data produced by the MATLAB scripts |

## Building

```sh
pdflatex PrimePattern.tex
```

Figures are referenced by relative path, so build from the repository root.

## Status

Written between 22 September and 5 October 2023; published here unmodified apart
from repository housekeeping. Per-file original modification timestamps are
recorded in [`MANIFEST.md`](MANIFEST.md), and the 2023 content is committed with
its original date. No peer review — treat it as a working note, not a verified
result.

## Author

Twan Mennink
