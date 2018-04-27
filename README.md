# Code Clone Checker

WIP

## Setup

```
% ./setup.sh
```


## Run

```
% ./run.sh `pwd`/../github.com/expressjs/express/ --path lib/
info:    jscpd - copy/paste detector for programming source code, developed by Andrey Kucherenko
info:    Preprocessors running time: durationMs=29
info:    Scanning 11 files for duplicates...
info:    Scanning for duplicates time: durationMs=341
info:    Scanning... done!

info:    Start report generation...

info:    Found 1 exact clones with 12 duplicated lines in 1 files

        - /src/lib/response.js: 248-260
         /src/lib/response.js: 291-303


 0.30% (12 lines) duplicated lines out of 4062 total lines of code.

warn:    output file is not provided
info:    Generate report time: durationMs=12
info:    All time: durationMs=389
```
