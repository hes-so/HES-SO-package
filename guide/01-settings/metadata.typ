#import "@preview/hei-synd-thesis:0.2.2": *

#let option = (
  type : sys.inputs.at("type", default:"draft"),    // [full|minimal|draft]
  lang : sys.inputs.at("lang", default:"en"),       // [en|fr|de]
)

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
  version  : [v1.2.0 \ for typist v0.13.1 \ for hei-synd-thesis v0.2.2],
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
