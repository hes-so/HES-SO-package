#import "/01-settings/metadata.typ": *
#pagebreak()
= Code <sec:code>

There are two ways to include code in Typst: inline and block. For the block code you can use #link("https://typst.app/universe/package/codly")[codly] or #link("https://typst.app/universe/package/codelst")[codelst].

`codly` retakes the traditional #raw("```lang ```")  syntax while `codelst` uses a function taking the traditional syntax #raw("#sourcecode[```lang ```]").

Typst also provides the `raw` function to include code in the document. The `raw` function can be used for inline and block code.

#table(
  columns: 2,
  align: left+horizon,
  stroke:none,
  `inline monospaced string`, sourcecode[```typst
    `inline monospaced string` ```],
  raw(lang:"rust", "fn main() {println!(\"Hello world!\")}"), sourcecode[```typst
  raw(lang:"rust",
    "fn main() {println!(\"Hello world!\")"
  ) ```],
  raw(block:true, lang:"vhdl", read("code-example.vhdl")), sourcecode[```typst
  raw(block:true, lang:"vhdl", read("code-example.vhdl"))"
  ) ```],
  ```rust
fn main() {
  println!("Hello world!")
}
  ```,
  sourcecode[#raw("
```rust
fn main() {
  println!(\"Hello world!\")
}
```")],
  sourcecode[```rust
fn main() {
  println!("Hello world!")
}
  ```],
  sourcecode[#raw(lang:"typst","
sourcecode[```rust
fn main() {
  println!(\"Hello world!\")
}
```]")],
figure(
  align(left,
```rust
fn main() {
  println!("Hello world!")
}
  ```),
  caption: [Rust Code],
),
sourcecode[#raw(lang:"typst", "
#figure(
  align(left,
    ```rust
      fn main() {
        println!(\"Hello world!\")
      }
    ```
  ),
  caption: [Rust Code],
)```")],
)
