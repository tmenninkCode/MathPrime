# Errata for *Predictable Pattern of Non-primes* (2023)

The compiled `PrimePattern.pdf` is left as written in 2023. This page lists the
corrections a reader must apply. See the [README](README.md) for the full
literature comparison.

## 1. The lemma in §2 is false as stated

The 2023 text claims there is no prime at a triangular column $i = k(k-1)/2$
whenever $k^2-k+1 < x$. That is false. The row value at such a column is

$$P = \frac{(x-k)(x+k-1)}{2}$$

so the two factors are $x-k$ and $\frac{x+k-1}{2}$. The product is composite only
when **both** exceed 1, i.e. for $x \ge k+3$. The two cases the 2023 text omits
are exactly the surviving primes:

| Row | Value of $P$ | Prime when |
| --- | --- | --- |
| $x = k+1$ | $P = k$ | $k$ is prime |
| $x = k+2$ | $P = 2k+1$ | $2k+1$ is prime |

Correct statement: *for $i = k(k-1)/2$ and $x \ge k+3$, $P$ is composite; primes
are possible only in the two lowest rows of the column.*

## 2. The list of empty columns is wrong

The 2023 text lists the empty columns as $3, 6, 10, 15, 21, \dots$ Those are the
triangular numbers, but only some triangular columns are prime-free. By §1
above, a triangular column is prime-free **exactly when $k$ and $2k+1$ are both
composite**:

- $i = 6$ ($k=4$): prime-free ✓
- $i = 45$ ($k=10$): prime-free ✓
- $i = 66$ ($k=12$): prime-free ✓
- $i = 3$ ($k=3$): contains $P = 3$ at $x = 4$ ✗
- $i = 10$ ($k=5$): contains $P = 5$ at $x = 6$ ✗
- $i = 15$ ($k=6$): contains $P = 13$ at $x = 8$ ✗
- $i = 21$ ($k=7$): contains $P = 7$ at $x = 8$ ✗

Verified against a sieve for $x \le 20\,000$, $|i| \le 4\,000$: 35 prime-free
columns among 58 triangular columns in range, with zero mismatches against the
criterion above.

## 3. "Empty column" does not mean "triangular column"

Only the direction *triangular $i$ ⇒ composite for $x \ge k+3$ is proved. The
converse — that a non-triangular column must contain a prime — is a
quadratic-prime question (Bunyakovsky/Bateman–Horn for $f(x) = T(x-1) - i$) and
is open. It held in every column swept, but it is a conjecture, not a theorem.
The 2023 text states the equivalence as if proved.

## 4. The mirrored half is not shown to be empty of structure

For $i < 0$ the row value is $T(x-1) + |i|$, a *sum*, so no factorisation is
forced. Numerically all 4 000 columns with $i < 0$ contain a prime for
$x \le 20\,000$. The asymmetry is structural, not a discovery: a difference of
two triangular numbers needs non-negative indices, a sum does not.

## 5. Abstract promises material not in the text

The abstract announces a discussion of $\pi(x)$; the text does not contain one.

## 6. Build issue

Figure names in the `.tex` use mixed case; builds fail on case-sensitive
filesystems. Either rename the files or the `\includegraphics` arguments.

## Status

Written September–October 2023 as a personal exploration, never submitted for
publication. The underlying identities are classical — see the README's
"Status and prior work" section for the dated sources.
