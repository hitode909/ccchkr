# Code Clone Checker

Detect code clones with [kucherenko/jscpd: Copy/paste detector for programming source code.](https://github.com/kucherenko/jscpd), and post metrics to GitHub issue comment.

## Pull

% docker pull hitode909/ccchkr

## Build

```
% ./setup.sh
% docker push hitode909/ccchkr
```


## Run

```
% docker run -it --rm --volume `pwd`:/src/:ro -e PERSONAL_ACCESS_TOKEN='***' -e COMMENT_API_ENDPOINT='https://github.***.com/api/v3/repos/:USER/:REPO/issues/:NUMBER/comments' hitode909/ccchkr ccchkr.sh --path src/ts/
```
