# Homebrew-tl

This is unofficial Homebrew Formula, I almost create it for myself, but you can use freely :)

This software is released under the MIT License, see LICENSE.txt.

# Install

```
brew tap s10018/tl
brew install [library you like!]
```

You can install following commands or libraries using [Homebrew](http://brew.sh/ ):

## Classias (classias)

- Classias is a collection of machine-learning algorithms for classification.
  - detail: http://www.chokkan.org/software/classias/index.html.en
- You need `gcc46` now (?), so, in the situation, it took long time...

## Ckylark (ckylark)

- Ckylark generates the phrase structure of given input sentence using latent annotated probabilistic context-free grammar (LAPCFG) model.
  - detail: http://odaemon.com/?page=tools_ckylark
- You need `kytea` (if possible) if you want t parse Japanese text.
- You need some tokenizer if you want t parse Japanese text.
- You can select model if you input below command.
  - wsj: English
  - jdc: Japanese

```
ckylark --model `brew --prefix ckylark`/share/ckylark/[wsj|jdc] < text
```

## J.DepP (jdepp)

- J.DepP is a implementation of Japanese dependency parsing.
  - derail: http://www.tkl.iis.u-tokyo.ac.jp/~ynaga/jdepp/
- Sorry, You cannot select `--enable-standalone`
- Sorry, You only use Kyoto-University and NTT Blog corpus for model now.
- You need `mecab` to separate Japanese sentences to words, probably brew will install it if you do not have.

## ux-trie (ux)

- UX is a library for managing string collections, and support several string operations efficiently as in trie.
  - detail: https://code.google.com/p/ux-trie/
- I create for normalizeNumexp.

## normalizeNumexp (normalizenumexp)

- You need `pficommon`, please tap [this](https://github.com/gwtnb/homebrew-pficommon ) or [this](https://github.com/oame/homebrew-nlp )..etc.
- You need `ux`.
  - brew will install `pficommon` and `ux` if not installed.
