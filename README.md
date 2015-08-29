# Caseninja

Caseninja converts input text to chain, snake, camel and pascal case. It will freely convert any text to any case.

## Installation

```ruby
$ gem install caseninja
```

## Usage

```
$ caseninja
Usage: caseninja [options] args
        --chain                      Convert to chain case
        --snake                      Convert to snake case
        --camel                      Convert to camel case
        --pascal                     Convert to pascal case
        --upchain                    Convert to upper chain case
        --upsnake                    Convert to upper snake case
```

入力されたテキストをチェイン、スネーク、キャメル、パスカル、大文字チェイン、スネークケースにまとめて変換します。

```
$ caseninja "hello world"
hello-world    # chain
hello_world    # snake
helloWorld     # camel
HelloWorld     # pascal
HELLO-WORLD    # upchain
HELLO_WORLD    # upsnake
```

入力にはどのケースを入れても構いません。

```
$ caseninja fooBarToBaz
foo-bar-to-baz
foo_bar_to_baz
fooBarToBaz
FooBarToBaz
FOO-BAR-TO-BAZ
FOO_BAR_TO_BAZ
```

スネークケースに変換します。

```
$ caseninja fooBarToBaz --snake
foo_bar_to_baz
```

スネークケースに変換します。

```
$ caseninja fooBarToBaz --snake
foo_bar_to_baz
```

長文も簡単に変換できます。

```
$ caseninja "What does the Japanese word Dattebayo mean?"
what-does-the-japanese-word-dattebayo-mean?
what_does_the_japanese_word_dattebayo_mean?
whatDoesTheJapaneseWordDattebayoMean?
WhatDoesTheJapaneseWordDattebayoMean?
WHAT-DOES-THE-JAPANESE-WORD-DATTEBAYO-MEAN?
WHAT_DOES_THE_JAPANESE_WORD_DATTEBAYO_MEAN?
```
