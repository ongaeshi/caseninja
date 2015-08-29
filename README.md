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

Convert the entered text to the chain, snake, camel, pascal, uppercase chain and uppercase snake.

```
$ caseninja "hello world"
hello-world                                  # chain
hello_world                                  # snake
helloWorld                                   # camel
HelloWorld                                   # pascal
HELLO-WORLD                                  # upchain
HELLO_WORLD                                  # upsnake
```

You can enter any case.

```
$ caseninja fooBarToBaz
foo-bar-to-baz
.
.

$ caseninja foo-bar-to-baz
foo-bar-to-baz
.
.
```

Convert to snake case.

```
$ caseninja fooBarToBaz --snake
foo_bar_to_baz
```

Convert to snake and pascal case.

```
$ caseninja fooBarToBaz -s -p
foo_bar_to_baz
FooBarToBaz
```

You can also pass the sentence.

```
$ caseninja "What does the Japanese word Dattebayo mean?"
what-does-the-japanese-word-dattebayo-mean?
what_does_the_japanese_word_dattebayo_mean?
whatDoesTheJapaneseWordDattebayoMean?
WhatDoesTheJapaneseWordDattebayoMean?
WHAT-DOES-THE-JAPANESE-WORD-DATTEBAYO-MEAN?
WHAT_DOES_THE_JAPANESE_WORD_DATTEBAYO_MEAN?
```
