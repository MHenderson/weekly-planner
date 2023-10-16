# weekly-planner

Printables for a weekly planner.

To create a new weekly planner, first edit the file `src/cfg.tex`

You will need to set all of the variables year, month, weeknum
and startdom (the number of the day of the month of the first day
of the week).

For example, for week 42 of 2023 which is in October and begins
on the 16th.

```
\def\year{2023}
\def\month{10}
\def\weeknum{42}
\def\startdom{16}
```

Now run Make.

The new planner can be found in `output/weekly-planner.pdf`

A booklet version of the planner is in `output/weekly-planner-book.pdf`
