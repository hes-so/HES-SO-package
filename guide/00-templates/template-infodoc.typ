//
// Description: Infodocument Typst Template
// Author     : Silvan Zahno
//
#import "/01-settings/metadata.typ": *

#let infodoc(
  option: (
    type     : "full",
    lang     : "en",
  ),
  doc: (
    title    : none,
    authors  : (
      (
        name        : none,
        abbr        : none,
        email       : none,
        affiliation : none,
        url         : none,
      ),
    ),
    keywords : (),
    version : none,
  ),
  date: datetime.today(),
  tableof : (
    toc: true,
    tof: false,
    tot: false,
    tol: false,
    toe: false,
    maxdepth: 3,
  ),
  body) = {
  // basic properties
  set document(author: doc.authors.map(a => a.name), title: doc.title, keywords: doc.keywords, date: date)
  set page(margin: (top:3.5cm, bottom:3.5cm, left:3cm, right: 3cm))

  // header and footer
  set page(
    header: context(if here().page() >=2 [
    #set text(small)
      #h(1fr) #smallcaps[#doc.title]
    ]),
    footer: context( if here().page() >=2 [
      #set text(small)
      #enumerating-emails(names:doc.authors.map(a => a.abbr), emails:doc.authors.map(a => a.email)) / #date.display("[year]") #h(1fr) #context counter(page).display("1 / 1", both: true)
    ]),
  )

  // font & language
  set text(
    font: (
      "Libertinus Serif",
      "Fira Sans",
    ),
    fallback: true,
    lang:option.lang
  )

  // paragraph
  show par: set par(spacing: 1em)

  // heading
  set heading(numbering: "1.1")

  show heading.where(level: 1): (it) => {
    set text(size: huge)
    set block(above: 1.2em, below: 1.2em)
    if it.numbering != none {
      let num = numbering(it.numbering, ..counter(heading).at(it.location()))
      let prefix = num + h(0.3em) + text(code-border)[|] + h(0.3em)
      unshift-prefix(prefix, it.body)
    } else {
      it
    }
  }

  show heading.where(level: 2): (it) => {
    if it.numbering != none {
      let num = numbering(it.numbering, ..counter(heading).at(it.location()))
      unshift-prefix(num + h(0.8em), it.body)
    }
  }

  // link color
  //show link: it => text(fill:blue, underline(it))
  show link: it => text(fill:hei-blue, it)

  // code blocks
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
      inset: 7pt,
      radius: (left:0pt, right: 4pt),
      stroke: (left: 3pt + luma(80%), rest: 0.1pt + code-border),
      it,
    )
  }
  show: codly-init.with()
  codly(
    display-icon: false,
    languages: codly-languages,
    zebra-fill: none,
    stroke: 0.1pt + code-border,
    radius: 4pt,
    number-format: (number) => text(luma(210), size:7pt, [#h(1em)#number]),
    inset: (left:-0.4em, rest:0.3em),
    fill: code-bg,
  )

  // Captions
  set figure(numbering: "1", supplement: get-supplement)
  set figure.caption(separator: " - ") // With a nice separator
  set math.equation(numbering: "(1)", supplement: i18n("equation-name"))

  // Title row
  align(center)[
    #block(text(weight: 700, 1.75em, doc.title))
    #v(1em, weak: true)
    #date.display("[day].[month].[year]") - #doc.version
  ]

  // Author
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, doc.authors.len()),
      gutter: 1em,
      ..doc.authors.map(author => align(center)[
        *#author.name* \
        #link("mailto:"+author.email)[#author.email] \
        #link(author.url)[#author.affiliation] \
      ]),
    ),
  )

  // Table of content
  toc(
    tableof: tableof,
    titles: (
      toc: i18n("toc-title"),
      tot: i18n("tot-title"),
      tof: i18n("tof-title"),
      tol: i18n("tol-title"),
      toe: i18n("toe-title"),
    ),
    before: <sec:glossary>
  )

  // Main body
  set par(justify: true)

  body
}
