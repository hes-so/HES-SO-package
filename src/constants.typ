//---------------------------
// ------ CONSTANTES --------
// Commonly used constants  -
//---------------------------



//-----------------------------------------
// -------------- FONTSIZES ---------------
// We keep fontsizes outside dictionaries -
// to keep short call of the fontsizes    -
//-----------------------------------------
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


//-------------------------------------------------------
// ----------------------- COLORS -----------------------
// Some colors are in dictionary to keep topic together -
// e.g. school colors are in sub-dictionaries           -
//-------------------------------------------------------
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
    orange : rgb("#f36d21"),
    blue   : rgb("#0199d6"),
    pink   : rgb("#d41367"),
    yellow : rgb("#f3c300"),
    green  : rgb("#00945e"),
  ),
  heiafr: (
    // https://www.heia-fr.ch/en/university/press-and-communication/logo/
    blue: cmyk(100%, 23%, 0%, 18%),
    gray: cmyk(0%, 6%, 11%, 38%)
  ),
  heigvd: (
    red: rgb("#e1251b")
  ),
  hepia: (
    black: rgb("#000000"),
    red: rgb("#e2001a")
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


//------------------
// ----- FONTS -----
//------------------

#let fonts = (
  default: (
    "Libertinus Serif",
    "Fira Sans",
  ),
  hei: "Corporative Sans",
)


//------------------
// ----- LOGOS -----
//------------------

#let logos = (
  hesso-logo        : read("img/logos/hesso-logo.svg", encoding: none),
  hesso-full        : read("img/logos/hesso-full.svg", encoding: none),
  mse               : read("img/logos/mse.svg", encoding: none),
  swissuniversities : read("img/logos/swissuniversities.svg", encoding: none),
  hei               : read("img/logos/hei.svg", encoding: none),
  hevs              : read("img/logos/hevs.svg", encoding: none),
  heiafr-short      : read("img/logos/heiafr-short.svg", encoding: none),
  heiafr-full       : read("img/logos/heiafr-full.svg", encoding: none),
  heigvd            : read("img/logos/heigvd.svg", encoding: none),
  hepia             : read("img/logos/hepia.svg", encoding: none),
)


// -----------------
// ----- ICONS -----
// -----------------

#let placeholder      = read("img/placeholder.svg", encoding: none)
#let icon             = read("img/icons/icon.svg", encoding: none)
#let condidential     = read("img/confidential.svg", encoding: none)

#let icons = (
  check-badge  : read("img/icons/check-badge.svg", encoding: none),
  check-circle : read("img/icons/check-circle.svg", encoding: none),
  check-square : read("img/icons/check-square.svg", encoding: none),
  check        : read("img/icons/check.svg", encoding: none),
  circle       : read("img/icons/circle.svg", encoding: none),
  file         : read("img/icons/file.svg", encoding: none),
  fire         : read("img/icons/fire.svg", encoding: none),
  folder       : read("img/icons/folder.svg", encoding: none),
  idea         : read("img/icons/idea.svg", encoding: none),
  important    : read("img/icons/important.svg", encoding: none),
  info         : read("img/icons/info.svg", encoding: none),
  rocket       : read("img/icons/rocket.svg", encoding: none),
  square       : read("img/icons/square.svg", encoding: none),
  todo         : read("img/icons/todo.svg", encoding: none),
  warning      : read("img/icons/warning.svg", encoding: none),
  think        : read("img/icons/think.svg", encoding: none),
  help         : read("img/icons/help.svg", encoding: none),
  x-circle     : read("img/icons/x-circle.svg", encoding: none),
  x-square     : read("img/icons/x-square.svg", encoding: none),
  x            : read("img/icons/x.svg", encoding: none),
)
