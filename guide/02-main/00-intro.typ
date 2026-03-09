#import "/01-settings/metadata.typ": *
#pagebreak()
= Introduction <sec:intro>

The goal of this document is to have the most common used elements for the markup language `typst` readily available.
A detailed documentation can be found on theirs website: #link("https://typst.app/docs")[https://typst.app/docs]

It is to note that these are most common used elements for the template and library #link("https://typst.app/universe/package/hei-synd-thesis")[hei-synd-thesis]. This template includes the following additional libraries:
- #link("https://typst.app/universe/package/codelst")[codelst] - Source code formatting
- #link("https://typst.app/universe/package/codly")[codly] - Source code formatting
- #link("https://typst.app/universe/package/glossarium/")[glossarium] - Glossary funcionality
- #link("https://typst.app/universe/package/wordometer/")[wordometer] - Word counts and document statistics
- #link("https://typst.app/universe/package/icu-datetime/")[icu-datetime] - Date and time formatting
- #link("https://typst.app/universe/package/cheq/")[cheq] - Markdown-like checklists
- #link("https://typst.app/universe/package/muchpdf/")[muchpdf] - include PDF images
- all files can be found in the #link("https://github.com/hei-templates/hei-synd-thesis")[github repo] such as
  - `boxes.typ`
  - `constants.typ`
  - `helpers.typ`
  - `i18n-thesis.json`
  - `items.typ`
  - `pages-*.typ`
  - `template-*.typ`

In order to use the #link("https://typst.app/universe/package/hei-synd-thesis")[hei-synd-thesis] as library import it as follows:

#sourcecode[```typst
#import "@preview/hei-synd-thesis:0.3.0": *
```]
