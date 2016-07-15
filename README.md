# WeeChat Container

## Usage

```
docker run -it    \
  --rm            \
  --env "TERM=$TERM" \
  --env "WEE_USER=$(id -u)" \
  --volume "$HOME/.weechat:/.weechat" \
  frew/weechat
```
