#import "00-templates/template-infodoc.typ": *
#import "01-settings/metadata.typ": *

//-----------------------------------------------------------------------------
// Template config
//
#show: infodoc.with(
  title: title,
  authors: authors,
  date: date,
  version: version,
  tableof: tableof,
)

//-----------------------------------------------------------------------------
// Content
//
#include "02-main/00-intro.typ"
#include "02-main/01-installation.typ"
#include "02-main/02-formatting.typ"
#include "02-main/03-elements.typ"
#include "02-main/04-references.typ"
#include "02-main/05-code.typ"
#include "02-main/06-math.typ"
#include "02-main/07-emoji.typ"

//-----------------------------------------------------------------------------
// Bibliography
//
#if bib == true {
  include "03-tail/bibliography.typ"
}