// DO NOT TOUCH THESE OPTIONS
#let option = (
  //type        : "full",
  type        : "minimal",
)

// Metadata of the document
#let title= "Guide to Typst"
#let authors= (
  (name: "tschinz",
  email: "whynotlogic@gmail.com",
  affiliation: "HEI-Vs",
  ),
)
#let date= datetime.today().display("[day].[month].[year]")
#let version= "v1.0 0 - for typist v0.11.1"
#let tableof = (
  toc: true,
  tof: true,
  tot: true,
  tol: true,
  toe: true,
)
#let bib= true
#let icon="../04-resources/icon.svg"
#let bibstyle="ieee" //"apa", "chicago-author-date", "chicago-notes", "mla"