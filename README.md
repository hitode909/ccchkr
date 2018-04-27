# Code Clone Checker

WIP

## Setup

```
% ./setup.sh
```


## Run

```
% docker run -it --rm --volume `pwd`:/src/:ro -e PERSONAL_ACCESS_TOKEN='***' -e COMMENT_API_ENDPOINT='https://github.***.com/api/v3/repos/:USER/:REPO/issues/:NUMBER/comments' ccchkr ccchkr.sh --path src/ts/
```
