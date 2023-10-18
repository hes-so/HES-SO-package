//
// Description: Title page for the littlebook template
// Author     : Silvan Zahno
//
#import "../00-templates/helpers.typ": *

#let page-title-littlebook(
  version: none,
  option: none,
  date: none,
  book: (),
  authors: (),
) = {
  v(1fr)
  if book.title != none {
    align(center, text(size:huge, [#book.title] ))
    v(1em)
  }
  if book.subtitle != none {
    align(center, text(size:larger, [#book.subtitle] ))
    v(1em)
  }

  v(1fr)

  // Authors
  set align(center)
  let i = 1
  for author in authors {
    if author.name != none {
      [#author.name]
    }
    if i < authors.len() {
      [, ]
    }
    i = i + 1
  }
  v(1fr)

  align(center,
    if book.logo != none {
      [#image(book.logo, width:4cm)]
    }
  )

  v(1fr)

  align(center,
    if authors.at(0).logo != none {
      [#image(authors.at(0).logo, width:3cm)]
    }
  )

}