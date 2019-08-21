# Code Clone Checker

Detect code clones with [kucherenko/jscpd: Copy/paste detector for programming source code.](https://github.com/kucherenko/jscpd), and set the commit status.

## Pull

```
% docker pull hitode909/ccchkr
```

## Build

```
% ./setup.sh
% docker push hitode909/ccchkr
```

## Run

Set commit status as error when code duplication rate of `src/ts/` is larger than 1%.

```
% docker run -it --rm \
    --volume `pwd`:/src/:ro \
    -e PERSONAL_ACCESS_TOKEN='***' \
    -e COMMIT_ENDPOINT='https://github.***.com/api/v3/repos/:USER/:REPO/statuses/:COMMIT' \
    -e LIMIT=1
    hitode909/ccchkr ccchkr.sh --path src/ts/
```
