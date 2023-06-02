#pagebreak()
= Code

#table(
  columns: 2,
  align: left+horizon,
  stroke:none,
  `inline monospaced string`, ```typst
  `inline monospaced string` ```,
  raw(lang:"rust", "fn main() {prinln!(\"Hello world!\")}"), ```typst
  raw(lang:"rust",
    "fn main() {prinln!(\"Hello world!\")"
  ) ```,
  ```rust
fn main() {
  prinln!("Hello world!")
}
  ```,
  ```typst
``\`rust
fn main() {
  prinln!("Hello world!")
}
``\`
```,
figure(
  align(left,
```rust
fn main() {
  prinln!("Hello world!")
}
  ```),
  caption: [Rust Code],
),
```typst
#figure(
  align(left,
    ``\`rust
      fn main() {
        prinln!("Hello world!")
      }
    ``\`
  ),
  caption: [Rust Code],
)
```,
)


