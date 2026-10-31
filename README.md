# Predictable Pattern of Non-primes

An illustration rather than a result: how grouping the primes into intervals of the form

$$\frac{(x-1)^2}{2} < P < \frac{x^2}{2}$$

and drawing each interval as a centred horizontal segment produces a fan of vertical
"lines of no primes". Every prime $P$ in row $x$ sits at

$$\frac{x^2}{2} - \frac{x}{2} - i = P$$

so since $\frac{x^2}{2} - \frac{x}{2} = T(x-1)$, a row is nothing but the triangular
number $T(x-1)$ minus the column index $i$. A column is empty exactly when
$P = (x-k)(x+k-1)/2$ at $i = k(k-1)/2$, i.e. at triangular $i$ — which is why the
empty columns are at 3, 6, 10, 15, 21, … and, because triangular numbers are
non-negative, why they appear on one side only.

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
the wrong case for Linux builds. The correct statement is: for $i = k(k-1)/2$ and
$x \ge k+3$, $P$ is composite; the only primes in a triangular column are
$(i{=}0, x{=}3, P{=}3)$ and $(i{=}1, x{=}4, P{=}5)$. Verified exactly against a
sieve for $x \le 20\,000$ ($|i| \le 4\,000$): 87 empty columns, all non-negative
and all triangular.

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
its original date. No peer review.

## Author

Twan Mennink
