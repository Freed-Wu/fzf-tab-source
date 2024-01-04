#!/usr/bin/env -S jq -jf
# https://github.com/carloscuesta/gitmoji-cli/issues/1246
.[] | "s=\(.code)=\(.emoji)=g;"
