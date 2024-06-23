# vim-syntax-gemtext

This is a Gemtext syntax mode for [vim](https://www.vim.org), with syntax highlighting and file type detection.

## Setup

Copy `syntax/gemtext.vim` to `~/.vim/syntax/gemtext.vim`.

> This file describes the "gemtext" syntax mode. It matches the `text/gemini` MIME type described by the [gemtext specification](https://geminiprotocol.net/docs/gemtext-specification.gmi).

Copy `ftdetect/gemtext.vim` to `~/.vim/ftdetect/gemtext.vim`.

> This file associates Gemtext syntax with files ending in ".gmi" and ".gemini".

To test, open `example.gmi` in a new vim process.
