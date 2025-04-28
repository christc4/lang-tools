# lang-tools

## Dependencies

[translate-shell](//github.com/soimort/translate-shell)

> *NOTE*: to prevent ANSI escape sequences in terminal output you can use the built in `no-ansi` flag or pipe output into awk

> Example: `% trans :en "$post_arg_searching_query1" | awk '{gsub(/\x1b\[[0-9;]*m/,"")}1'`

### chinese

#### Dependencies

[pinyin-tool](https://github.com/briankung/pinyin-tool)
