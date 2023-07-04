// Import other modules so you only need to import the helpers
// #import "../00-templates/helpers.typ": *

#import "../00-templates/boxes.typ": *
#import "../00-templates/constants.typ": *
#import "../00-templates/items.typ": *
#import "../00-templates/sections.typ": *
#import "../00-templates/tablex.typ": *
#import "../01-settings/metadata.typ": *
#import "../03-tail/glossary.typ": *

#let myref(label) = locate(loc =>{
    if query(label,loc).len() != 0 {
        ref(label)
    } else {
        text(fill: red)[?]
    }
})

//-------------------------------------
// Acronym functions
//
}
#let acrshort(item) = {
  item.abbr
}
#let acrlong(item) = {
  [#item.long)]
}
#let acrfull(item) = {
  [#item.long (#item.abbr)]
}

//-------------------------------------
// Mini Table of content
//
#let minitoc(
  after: none,
  before: none,
  addline: true,
  stroke: 0.5pt,
  length: 100%
) = {
  v(2em)
  text(large, [*Contents*])
  if addline == true {
    line(length:length, stroke:stroke)
  }
  outline(
    title: none,
    target: selector(heading)
      .after(after)
      .before(before, inclusive: false)
  )
  if addline == true {
    line(length:length, stroke:stroke)
  }
}

//-------------------------------------
// Heading shift
//
#let unshift_prefix(prefix, content) = style((s) => {
    pad(left: -measure(prefix, s).width, prefix + content)
  })

//-------------------------------------
// Research
//
// item, item, item and item List
//
#let enumerating_authors(
  items: none,
) = {
  let i = 1
  if items != none {
    for item in items {
      if item != none {
        [#item.name#super(repr(item.institute))]
        if i < items.len() {
          [, ]
        }
      }
      i = i + 1
    }
  }
}

#let enumerating_institutes(
  items: none,
) = {
  let i = 1
  if items != none {
    for item in items {
      if item != none {
        [_#super(repr(i))_ #if item.research_group != none { [_ #item.research_group - _]} _ #item.name __, #item.address _ \ ]
        i = i + 1
      }
    }
  }
}

//-------------------------------------
// Script
//
// item, item, item and item List
//
#let enumerating_items(
  items: none,
) = {
  let i = 1
  if items != none {
    for item in items {
      if item != none {
        [#item]
        if i < items.len() {
          [, ]
        }
      }
      i = i + 1
    }
  }
}
#let enumerating_links(
  names: none,
  links: none,
) = {
  if names != none {
    let i = 0
    for name in names {
      if name != none {
        [#link(links.at(i))[#name]]
        if i+1 < names.len() {
          [, ]
        }
      }
      i = i + 1
    }
  }
}
#let enumerating_emails(
  names:  none,
  emails: none,
) = {
  if names != none {
    let i = 0
    for name in names {
      if name != none {
        [#link("mailto:"+emails.at(i))[#name]]
        if i+1 < names.len() {
        [, ]
        }
      }
      i = i + 1
    }
  }
}

//-------------------------------------
// safe_link
//
#let safe_link(
  name: none,
  url: none,
) = {
  if name != none {
    if url != none {
      link(url)[#name]
    } else  {
      name
    }
  }
}

//-------------------------------------
// Counter
//
#let word_counter_init() = {[
  #show regex("\b\w+\b"): it => counter("words").step() + it
]}
#let word_count(preamble:"Word count:") = {[
  #preamble #counter("words").display()
]}

#let char_counter_init() = {
  show regex(".+"): it => counter("chars").step() + it
}
#let char_count(preamble:"Char count:") = {[
  #preamble #counter("chars").display()
]}

//-------------------------------------
// Option Style
//
#let option_style(
  type: "draft",
  size: small,
  style: "italic",
  fill: gray-40,
  body) = {[
  #if option.type == type {text(size:size, style:style, fill:fill)[#body]
  }
]}