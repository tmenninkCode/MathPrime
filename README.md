# Predictable Pattern of Non-primes

A hobby project, not a publication — an illustration rather than a result: how
grouping the primes into intervals of the form

$$\frac{(x-1)^2}{2} < P < \frac{x^2}{2}$$

and drawing each interval as a centred horizontal segment produces a fan of vertical
"lines of no primes". Every prime $P$ in row $x$ sits at

$$\frac{x^2}{2} - \frac{x}{2} - i = P$$

so since $\frac{x^2}{2} - \frac{x}{2} = T(x-1)$, a row is nothing but the triangular
number $T(x-1)$ minus the column index $i$. A column can only be empty at a
triangular index $i = k(k-1)/2$, where the row value factors as
$P = (x-k)(x+k-1)/2$; for $x \ge k+3$ both factors exceed 1, so every such row is
composite. The only primes a triangular column can hold sit in its two lowest
rows: $x = k+1$ gives $P = k$ and $x = k+2$ gives $P = 2k+1$. A triangular column
is therefore prime-free exactly when $k$ and $2k+1$ are both composite — so
$i = 6, 45, 66, 120, \dots$ are empty, while $i = 3, 10, 15, 21, 28, \dots$ are not
($k$ or $2k+1$ prime there).

The mirrored half behaves differently. For $i < 0$ the row value is
$T(x-1) + |i|$, a *sum*, so nothing forces a factorisation and no column is
prime-free. This asymmetry is structural, not visual: it follows from triangular
numbers being non-negative.

The investigation started from the classical prime arrangements — the Klauber
triangle and the Ulam spiral — and from arranging primes along an Archimedes
spiral at varying angular rate.

## Status and prior work

**Read this before citing anything here.** The 2023 text is unchanged, and it
presents as new something that is largely classical. A literature check in
October 2026 established:

- The identity $T(x-1) - T(k-1) = \frac{(x-k)(x+k-1)}{2}$ and the counting of
  such representations is classical: **Glaisher 1907**; **Sylvester's**
  enumeration (see OEIS A001227, A136107); **T. Verhoeff**, "Rectangular and
  Trapezoidal Arrangements", *J. Integer Sequences* 2 (1999), #99.1.6;
  **M. A. Nyblom**, "On the Representation of the Integers as a Difference of
  Nonconsecutive Triangular Numbers", *Fibonacci Quarterly* 39(3) (2001)
  256–263.
- The composite statement itself is stated verbatim in **OEIS A089306** (comment
  by Amarnath Murthy, 2003): *"the difference of two triangular numbers is
  composite if the indices differ by more than 2."*
- The general mechanism — a quadratic that factors over the integers yields a
  prime-free line, with a possible exception when a factor equals 1 — was already
  in **Wikipedia, "Ulam spiral"** (§Explanation) by 2022, and the square-analogue
  for the Klauber triangle in **OEIS A005563** (comment by Charles Kusniec, 2017).
- The same conclusion, derived with the same $1+8T$ discriminant argument, was
  independently published in 2026: `giammirove/triangular-prime-pyramid`.

What is original here is the **picture**: this particular centred half-square
array, in which the classical structure becomes visible as columns. The paper's
abstract also promises a discussion of $\pi(x)$ that the text does not contain.

Two corrections a reader should apply to the 2023 text: the lemma in §2 is false
as stated (it omits the case $x-k \le 2$), and the figure names in the `.tex` use
the wrong case for Linux builds. **[`ERRATA.md`](ERRATA.md) lists all six
corrections** for readers who only look at the compiled PDF. The correct statement is: for $i = k(k-1)/2$ and
$x \ge k+3$, $P$ is composite, with primes possible only at $x = k+1$ ($P = k$)
and $x = k+2$ ($P = 2k+1$).

Verified against a sieve for $x \le 20\,000$ ($|i| \le 4\,000$):

| Fact | Result |
| --- | --- |
| Prime-free columns | 35, **all** with $i \ge 0$, **all** triangular |
| Triangular columns in range | 58 — the other 23 contain a prime in their bottom rows |
| Rule "prime-free $\iff$ $k$ and $2k+1$ both composite" | 0 mismatches |
| Columns with $i < 0$ (mirrored half) | 4 000 tested, **all 4 000 contain a prime** |

So the mirrored half has no prime-free columns whatsoever. The 2026 publication
`giammirove/triangular-prime-pyramid` states the composite-row result for its own
pyramid, but that pyramid has no mirrored half — its rows run $r \ge 0$ only — so
the one-sidedness never arises there. It is an addition relative to that text, and
an elementary one: a difference of two triangular numbers needs non-negative
indices, a sum does not.

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

## Provenance

Written between 22 September and 5 October 2023; published here unmodified apart
from repository housekeeping. Per-file original modification timestamps are
recorded in [`MANIFEST.md`](MANIFEST.md), and the 2023 content is committed with
its original date. Written for curiosity, never submitted anywhere.

## Author

Twan Mennink
