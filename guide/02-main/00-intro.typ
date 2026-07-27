#import "/01-settings/metadata.typ": *
#pagebreak()
= Introduction <sec:intro>

The goal of this document is to have the most common used elements for the markup language `typst` readily available.
A detailed documentation can be found on theirs website: #link("https://typst.app/docs")[https://typst.app/docs]

As this package is intended for use with all templates / documents in HES-SO, this guide go trough the most usefull element of this library: #link("https://typst.app/universe/package/hes-so-package")[hes-so-package]. This package includes in particular the following additional libraries:
- #link("https://typst.app/universe/package/codelst")[codelst] - Source code formatting
- #link("https://typst.app/universe/package/codly")[codly] - Source code formatting
- #link("https://typst.app/universe/package/glossarium/")[glossarium] - Glossary funcionality
- #link("https://typst.app/universe/package/wordometer/")[wordometer] - Word counts and document statistics
- #link("https://typst.app/universe/package/icu-datetime/")[icu-datetime] - Date and time formatting
- #link("https://typst.app/universe/package/cheq/")[cheq] - Markdown-like checklists
- #link("https://typst.app/universe/package/mmdr/")[mmdr] - A Mermaid diagram renderer
- all files can be found in the #link("https://github.com/hes-so/HES-SO-package")[github repo] such as
  - `boxes.typ`
  - `constants.typ`
  - `helpers.typ`
  - `i18n-thesis.json`
  - `items.typ`
  - `karnaugh.typ`

In order to use the #link("https://typst.app/universe/package/hes-so-package")[hes-so-package] as library import it as follows:

#let code = "#import \"@preview/" + name + ":" + str(version) + "\": *"

#sourcecode(lang:"typ", raw(code))
