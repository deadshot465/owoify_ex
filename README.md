# owoify_ex
Turning your worst nightmare into a Hex package.

[![Elixir CI](https://github.com/deadshot465/owoify_ex/actions/workflows/elixir.yml/badge.svg)](https://github.com/deadshot465/owoify_ex/actions/workflows/elixir.yml)

- [Hex package](https://hex.pm/packages/owoify_ex)

This is a Elixir port of [mohan-cao's owoify-js](https://github.com/mohan-cao/owoify-js), which will help you turn any string into nonsensical babyspeak similar to LeafySweet's infamous Chrome extension.

Just like my other Owoify ports, three levels of owoness are available:

1. **owo (default)**: The most vanilla one.
2. **uwu**: The moderate one.
3. **uvu**: Litewawwy unweadabwal.

Please refer to the original [owoify-js repository](https://github.com/mohan-cao/owoify-js) for more information.

What? You think I have already made enough port so I won't be making new ports? Of course not! And why not :)

## Reason for development
Because Elixir is a very nice language and it deserves a owoify package.

## Installation
owoify_ex is [available in Hex](https://hex.pm/packages/owoify_ex). The package can be installed
by adding `owoify_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:owoify_ex, "~> 0.1.0"}
  ]
end
```

Documentation will be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/owoify_ex](https://hexdocs.pm/owoify_ex).

## Usage
owoify_ex is implemented as a function inside the module `OwoifyEx`. Elixir is a functional programming language, so you only need to call `OwoifyEx.owoify()` to invoke it.

```elixir
IO.puts(OwoifyEx.owoify("This is the string to owo! Kinda cute isn't it?"))
IO.puts(OwoifyEx.owoify("This is the string to owo! Kinda cute isn't it?", "uvu"))

# Possible output
# This is teh stwing two owo! Kinda cute isn't it?
# fwis is teh stwing two owoowo Kinda cute isn't it?
```

## Disclaimer
As always, this package is written for practicing and bots' needs. Performance is **NOT** guaranteed.

That being said, PRs are always welcomed.

## See also
- [owoify-js](https://github.com/mohan-cao/owoify-js) - The original owoify-js repository.
- [Owoify.Net](https://www.nuget.org/packages/Owoify.Net/1.0.1) - The C# port of Owoify written by me.
- [Owoify++](https://github.com/deadshot465/OwoifyCpp) - The C++ header-only port of Owoify written by me.
- [owoify_rs](https://crates.io/crates/owoify_rs) - The Rust port of Owoify written by me.
- [owoify-py](https://pypi.org/project/owoify-py/) - The Python port of Owoify written by me.
- [owoify_dart](https://pub.dev/packages/owoify_dart) - The Dart port of Owoify written by me.
- [owoify_rb](https://rubygems.org/gems/owoify_rb) - The Ruby port of Owoify written by me.
- [owoify-go](https://github.com/deadshot465/owoify-go) - The Go port of Owoify written by me.
- [owoifySwift](https://github.com/deadshot465/OwoifySwift) - The Swift port of Owoify written by me.
- [owoifyKt](https://github.com/deadshot465/owoifyKt) - The Kotlin port of Owoify written by me. Being moved to MavenCentral as Bintray retires.