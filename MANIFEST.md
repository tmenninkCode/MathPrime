# Original file timestamps

The paper was written between **22 September 2023 and 5 October 2023**. Git only
records the date of the commit, not the modification time of each file, so the
original modification timestamps are preserved here, taken from the filesystem
before the repository was created.

All times are local (Europe/Amsterdam); autumn 2023 was still CEST, so **+02:00**.

| File | Size (bytes) | Last modified (original) |
| --- | ---: | --- |
| `PrimCountFunc.m` | 333 | 2023-09-22 23:17:42 +0200 |
| `Psum.mat` | 48 501 | 2023-09-22 23:27:46 +0200 |
| `FitS.m` | 568 | 2023-09-23 22:09:55 +0200 |
| `PrimePattern.m` | 816 | 2023-09-23 23:09:18 +0200 |
| `xydata.mat` | 1 189 985 | 2023-09-23 23:14:37 +0200 |
| `theorem.m` | 1 986 | 2023-09-30 22:42:49 +0200 |
| `PrimPatt.png` | 836 507 | 2023-10-04 18:36:06 +0200 |
| `titleIm.png` | 152 862 | 2023-10-04 19:35:12 +0200 |
| `primPatFirstTenLines.png` | 172 439 | 2023-10-04 19:58:22 +0200 |
| `Pattern400.png` | 599 908 | 2023-10-04 23:20:16 +0200 |
| `Pattern3500.png` | 926 815 | 2023-10-04 23:49:23 +0200 |
| `PrimePattern.pdf` | 905 271 | 2023-10-05 00:05:28 +0200 |
| `PrimePattern.tex` | 10 157 | 2023-10-05 00:05:31 +0200 |
| `PatternAnalysis.m` | 1 286 | 2023-10-05 00:17:36 +0200 |

The 2023 content is committed with an author/committer date of
**2023-10-05 00:17:36 +0200** (the last modification of any paper file); the
repository housekeeping in this commit tree (`.gitignore`, `README.md`, this
manifest) is dated 2026-10-31.

`PrimePattern.tex` and `PrimePattern.pdf` were written within seconds of each
other, so the PDF is the build of that exact source.

To restore the timestamps on a fresh clone:

```sh
git log --format=%ad --date=iso   # commit date only
# per-file times: see the table above
touch -d "2023-10-05 00:05:31 +0200" PrimePattern.tex   # BSD/macOS: touch -t
```
