# Code Clone Checker

WIP

## Setup

```
% ./setup.sh
```


## Run

```
% ./run.sh https://github.com/expressjs/express.git --path lib/
https://github.com/expressjs/express.git
Cloning into 'src'...
remote: Counting objects: 29897, done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 29897 (delta 0), reused 0 (delta 0), pack-reused 29894
Receiving objects: 100% (29897/29897), 8.46 MiB | 1.32 MiB/s, done.
Resolving deltas: 100% (16822/16822), done.
Checking connectivity... done.
info:    jscpd - copy/paste detector for programming source code, developed by Andrey Kucherenko
info:    Preprocessors running time: durationMs=21
info:    Scanning 11 files for duplicates...
info:    Scanning for duplicates time: durationMs=333
info:    Scanning... done!

info:    Start report generation...

info:    Found 1 exact clones with 12 duplicated lines in 1 files

        - /src/lib/response.js: 248-260
         /src/lib/response.js: 291-303


 0.30% (12 lines) duplicated lines out of 4062 total lines of code.

warn:    output file is not provided
info:    Generate report time: durationMs=9
info:    All time: durationMs=383
```
