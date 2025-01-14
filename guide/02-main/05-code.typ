#import "/00-templates/helpers.typ": *
#pagebreak()
= Code <sec:code>

#table(
  columns: 2,
  align: left+horizon,
  stroke:none,
  `inline monospaced string`, ```typst
  `inline monospaced string` ```,
  raw(lang:"rust", "fn main() {println!(\"Hello world!\")}"), ```typst
  raw(lang:"rust",
    "fn main() {println!(\"Hello world!\")"
  ) ```,
  raw(block:true, lang:"vhdl", read("code-example.vhdl")), ```typst
  raw(block:true, lang:"vhdl", read("code-example.vhdl"))"
  ) ```,
  ```rust
fn main() {
  println!("Hello world!")
}
  ```,
  ```typst
``\`rust
fn main() {
  println!("Hello world!")
}
``\`
```,
figure(
  align(left,
```rust
fn main() {
  println!("Hello world!")
}
  ```),
  caption: [Rust Code],
),
```typst
#figure(
  align(left,
    ``\`rust
      fn main() {
        println!("Hello world!")
      }
    ``\`
  ),
  caption: [Rust Code],
)
```,
)

A plugin allows to get linenumbers

```typst
#import "@preview/codelst:2.0.2": sourcecode
```

#table(
  columns: 2,
  align: left+horizon,
  stroke:none,
  [#sourcecode()[```rust
fn main() {
  prinln!("Hello world!")
}
  ```]],
  [```typst
#sourcecode()[
  ``\`rust
fn main() {
  prinln!("Hello world!")
}
``\`]
```]
)
