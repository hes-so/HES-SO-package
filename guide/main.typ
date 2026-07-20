#import "/00-templates/template-infodoc.typ": *
#import "/01-settings/metadata.typ": *
#import "/03-tail/bibliography.typ": *
#import "/03-tail/glossary.typ": *
#show:make-glossary
#register-glossary(entry-list)

//-------------------------------------
// Template config
//
#show: infodoc.with(
  option: option,
  doc: doc,
  date: date,
  tableof: tableof,
)

//-------------------------------------
// Content
//
#include "/02-main/00-intro.typ"
#include "/02-main/01-installation.typ"
#include "/02-main/02-formatting.typ"
#include "/02-main/03-elements.typ"
#include "/02-main/04-references.typ"
#include "/02-main/05-code.typ"
#include "/02-main/06-math.typ"
#include "/02-main/07-emoji.typ"

//-------------------------------------
// Glossary
//
#make_glossary(gloss:gloss, title:i18n("gloss-title"))

//-------------------------------------
// Bibliography
//
#make_bibliography(bib:bib, title:i18n("bib-title"))

//-------------------------------------
// Appendix
//
#if appendix == true {[
  #pagebreak()
  #counter(heading).update(0)
  #set heading(numbering:"A")
  = #i18n("appendix-title") <sec:appendix>
  #include "/03-tail/a-appendix.typ"
]}
