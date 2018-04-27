# Code Clone Checker

WIP

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
