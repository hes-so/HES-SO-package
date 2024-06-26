//
// Description: Infodocument Typst Template
// Author     : Silvan Zahno
//
#import "helpers.typ": *

#let infodoc(
  title: "",
  authors: (),
  date: none,
  version: none,
  lang: "en",
  tableof : (
    toc: true,
    tof: false,
    tot: false,
    tol: false,
    toe: false,
  ),
  latexstyle: false,
  body) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page(margin: (top:3.5cm, bottom:3.5cm, left:3cm, right: 3cm))

  // Header and Footer
  set page(
    header: locate(loc => if loc.page() >=2 [
    #set text(small)
      #if authors.len() > 2 {
        [#authors.map(a => a.name) #h(1fr) #smallcaps[#title]]
      } else {
        [#authors.first().name #h(1fr) #smallcaps[#title]]
      }],
    ),
    footer: locate(loc => if loc.page() >=2 [
      #set text(small)
      #h(1fr) #counter(page).display("1 / 1", both: true) #h(1fr)
    ]),
  )
  // font & language
  set text(
    font: (
      "Linux Libertine",
      "Fira Sans",
    ),
    fallback: true,
    lang:lang
  )
  // paragraph
  show par: set block(spacing: 1em)
  //set par(leading: 0.55em, first-line-indent: 1.8em, justify: true)

  // heading
  show heading: set block(above: 1.2em, below: 1.2em)
  set heading(numbering: "1.1")

  show heading.where(level: 1): (it) => {
    set text(size: huge)
    set block(above: 1.2em, below: 1.2em)
    if it.numbering != none {
      let num = numbering(it.numbering, ..counter(heading).at(it.location()))
      let prefix = num + h(0.3em) + text(code-border)[|] + h(0.3em)
      unshift_prefix(prefix, it.body)
    } else {
      it
    }
  }

  show heading.where(level: 2): (it) => {
    let num = numbering(it.numbering, ..counter(heading).at(it.location()))
    unshift_prefix(num + h(0.8em), it.body)
  }
  //show heading.where(level: 1): set text(size:huge)
  //show heading.where(level: 1): set pad(size:huge)

  // link color
  //show link: it => text(fill:blue, underline(it))
  show link: it => text(fill:hei-blue, it)

  // Math numbering
  set math.equation(numbering: "(1)")

  // code blocks
  set raw(syntaxes:"syntax/VHDL.sublime-syntax")
  set raw(syntaxes:"syntax/riscv.sublime-syntax")

  show raw.where(block: false): set text(weight: "semibold")
  //show raw.where(block: false): it => {
  //  highlight(
  //    fill:code-bg,
  //    top-edge: "ascender",
  //    bottom-edge: "bounds",
  //    extent:1pt, it)
  //}
  show raw.where(block: true): set text(size: tiny)
  show raw.where(block: true): it => {
    block(
      fill: code-bg,
      width:100%,
      inset: 10pt,
      radius: 4pt,
      stroke: 0.1pt + code-border,
      it,
    )
  }

  // Title row
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(1em, weak: true)
    #date - #version
  ]

  // Author
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center)[
        *#author.name* \
        #link("mailto:"+author.email)[#author.email] \
        #author.affiliation \
      ]),
    ),
  )

  // Table of content
  toc(
    lang: lang,
    tableof: tableof,
  )

  // Main body
  set par(justify: true)

  body
}