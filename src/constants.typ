//
// Description: Commonly used constants in the templates
// Author     : Silvan Zahno
//
// Fontsizes
#let tinyer  = 6pt
#let tiny    = 8pt
#let smaller = 9pt
#let small   = 10pt
#let normal  = 11pt
#let large   = 14pt
#let larger  = 16pt
#let huge    = 24pt
#let huger   = 36pt

// fontsize+
#let tinyer-p  = tinyer+5pt
#let tiny-p    = tiny+5pt
#let smaller-p = smaller+5pt
#let small-p   = small+5pt
#let normal-p  = normal+5pt
#let large-p   = large+5pt
#let larger-p  = larger+5pt
#let huge-p    = huge+5pt
#let huger-p   = huger+5pt

// fontsizes++
#let tinyer-pp  = tinyer+10pt
#let tiny-pp    = tiny+10pt
#let smaller-pp = smaller+10pt
#let small-pp   = small+10pt
#let normal-pp  = normal+10pt
#let large-pp   = large+10pt
#let larger-pp  = larger+10pt
#let huge-pp    = huge+10pt
#let huger-pp   = huger+10pt

// Colors
#let colors = (
  box: (
    border: rgb("#252525"),
  ),
  code: (
    bg:     rgb("#F5F5F5"),
    border: rgb("#F5F5F5").darken(10%),
  ),
  gray-80 : rgb("#000000").lighten(20%),
  gray-70 : rgb("#000000").lighten(30%),
  gray-60 : rgb("#000000").lighten(40%),
  gray-50 : rgb("#000000").lighten(50%),
  gray-40 : rgb("#000000").lighten(60%),
  gray-30 : rgb("#000000").lighten(70%),
  gray-20 : rgb("#000000").lighten(80%),
  gray-10 : rgb("#000000").lighten(90%),
  hes-so: (
    // https://www.hes-so.ch/medias-et-communication/logos
    blue: rgb("#00609c"),
    gray: rgb("#968b83")
  ),
  mse: (
    // Get from logo in img/logos
    red: rgb("#ea514a"),
    gray: rgb("#6d7a82")
  ),
  hei: (
    orange : rgb("#eb6a28").darken(20%),
    blue   : rgb("#0095d8").darken(20%),
    pink   : rgb("#da0066").darken(20%),
    yellow : rgb("#f5c400").darken(20%),
    green  : rgb("#00925a").darken(20%),
  ),
  heiafr: (
    // https://www.heia-fr.ch/en/university/press-and-communication/logo/
    blue: cmyk(100%, 23%, 0%, 18%),
    gray: cmyk(0%, 6%, 11%, 38%)
  ),
  spl: (
    green : rgb("#bed600").darken(20%),
    blue  : rgb("#00a9e0").darken(20%),
    pink  : rgb("#da0066").darken(20%),
  ),
  icon: (
    info      : rgb("#5b75a0ff"),
    idea      : rgb("#ffe082ff"),
    warning   : rgb("#ffce31ff"),
    important : rgb("#f44336ff"),
    fire      : rgb("#fc9502ff"),
    rocket    : rgb("#bc5fd3ff"),
    todo      : rgb("#F5F5F5").darken(10%),
    think     : rgb("#00925a").darken(20%),
    help      : rgb("#00925a").darken(20%),
  ),
)

// Resources
#let icons-folder      = "img/icons/"
#let resources-folder  = "/resources/"
#let placeholder       = resources-folder + "placeholder.svg"
#let icon              = resources-folder + "icon.svg"
#let icon-check-badge  = icons-folder + "check-badge.svg"
#let icon-check-circle = icons-folder + "check-circle.svg"
#let icon-check-square = icons-folder + "check-square.svg"
#let icon-check        = icons-folder + "check.svg"
#let icon-circle       = icons-folder + "circle.svg"
#let icon-file         = icons-folder + "file.svg"
#let icon-fire         = icons-folder + "fire.svg"
#let icon-folder       = icons-folder + "folder.svg"
#let icon-idea         = icons-folder + "idea.svg"
#let icon-important    = icons-folder + "important.svg"
#let icon-info         = icons-folder + "info.svg"
#let icon-rocket       = icons-folder + "rocket.svg"
#let icon-square       = icons-folder + "square.svg"
#let icon-todo         = icons-folder + "todo.svg"
#let icon-warning      = icons-folder + "warning.svg"
#let icon-think        = icons-folder + "think.svg"
#let icon-help         = icons-folder + "help.svg"
#let icon-x-circle     = icons-folder + "x-circle.svg"
#let icon-x-square     = icons-folder + "x-square.svg"
#let icon-x            = icons-folder + "x.svg"
