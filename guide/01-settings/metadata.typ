////////////////////////////////
// DO NOT TOUCH THESE OPTIONS //
////////////////////////////////
#let option = (
  //type        : "full",
  type        : "minimal",
  //type        : "draft",
  //lang        : "en",
  //lang        : "de",
  lang        : "fr",
)
#let langs = json("/00-templates/i18n.json")
//////////////////////////////

//-------------------------------------
// Metadata of the document
//
#let doc= (
  title    : "Guide to Typst",
  authors: (
    (
      name        : "Silvan Zahno",
      abbr        : "ZaS",
      email       : "silvan.zahno@hevs.ch",
      affiliation : "HEI-Vs",
      url         : "https://synd.hevs.io",
    ),
  ),
  keywords : ("Typst", "Documentation", "Guide"),
  version  : "v1.1.0 - for typist v0.12.0",
)

#let date= datetime.today()
#let icon= "/04-resources/icon.svg"

//-------------------------------------
// Settings
//
#let tableof = (
  toc: true,
  tof: true,
  tot: true,
  tol: true,
  toe: true,
  maxdepth: 3,
)

#let gloss    = true
#let appendix = false
#let bib = (
  display : true,
  style : "ieee", //"apa", "chicago-author-date", "chicago-notes", "mla"
)
