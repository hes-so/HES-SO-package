#import "/01-settings/metadata.typ": *
#pagebreak()
= Formatting <sec:formatting>
== Markup

#align(center,
  table(
    columns: 3,
    stroke: (x: none),
    align: left + horizon,
    table.header([*Name*], [*Example*], [*Raw*]),
    "Singleline Comment", "", raw("//"),
    "Multiline Comment", "", raw("/*  */"),
    "Paragraph break", "", `blankline`,
    "Line break", "", raw("\ "),
    "bold", [*bold*], `*bold*`,
    "italic", [_italic_], `_italic_`,
    "monospaced", [`monospaced`], raw("`monospaced`"),
    "math", [$x=1$], `$x=1$`,
    "lowercase", [#lower("LoWeR")], `#lower("LoWeR")`,
    "uppercase", [#upper("UpPeR")], `#upper("UpPeR")`,
    "smallcaps", [#smallcaps("SmallCaps")], `#smallcaps("SmallCaps")`,
    "smartquote", [#smartquote()test#smartquote()], `#smartquote()test#smartquote())`,
    "overline", [#overline("overline")], `#overline("overline")`,
    "underline", [#underline("underline")], `#underline("underline")`,
    "strike", [#strike("strike")], `#strike("strike")`,
    "sub", [Text#sub("sub")], `Text#sub("sub")`,
    "super", [Text#super("super")], `Text#super("super")`,
    "Label", "", `<label>`,
    "Reference", "", `@label`,
  )
)

== Page Formatting

#sourcecode[```typst
#pagebreak()   // pagebreak
#parbreak()    // parbreak
\              // linebreak
```]

== Space

#table(
  columns: (50%,50%),
  stroke:none,
  [A #h(5cm) B],
  sourcecode[```typst
    A #h(5cm) B,
  ```],
  [C #v(0.2cm) D],
  sourcecode[```typst
    C #v(0.2cm) D
  ```],
)

== Text Formatting

Custom textsizes and colors are available in the #link("https://github.com/hei-templates/hei-synd-thesis/blob/main/lib/constants.typ")[constants.typ]:

#let display-colors(dict, prefix: "", raw-prefix: "colors.") = {
  let rows = ()
  for (key, val) in dict {
    let name = if prefix == "" { key } else { prefix + "." + key }
    let raw-str = "#text(fill:" + raw-prefix + name + ")[" + name + "]"
    rows.push([#text(fill: val)[#name]])
    rows.push(raw(raw-str))
  }
  return rows
}

#let basic-colors = (black: black, red: red, green: green, blue: blue, purple: purple)
#let gray-colors = (
  "gray-80": colors.gray-80,
  "gray-70": colors.gray-70,
  "gray-60": colors.gray-60,
  "gray-50": colors.gray-50,
  "gray-40": colors.gray-40,
  "gray-30": colors.gray-30,
  "gray-20": colors.gray-20,
  "gray-10": colors.gray-10,
)

#let color-rows = (
  ..display-colors(basic-colors, raw-prefix: ""),
  ..display-colors(gray-colors),
  ..display-colors(colors.mse, prefix: "mse"),
  ..display-colors(colors.hes-so, prefix: "hes-so"),
  ..display-colors(colors.hei, prefix: "hei"),
  ..display-colors(colors.heiafr, prefix: "heiafr"),
  ..display-colors(colors.heigvd, prefix: "heigvd"),
  ..display-colors(colors.hepia, prefix: "hepia"),
  ..display-colors(colors.icon, prefix: "icon"),
  ..display-colors(colors.code, prefix: "code"),
)

#align(center,
  table(
    columns: 3,
    align: left + horizon,
    stroke: (x: none),
    table.header([*Name*], [*Example*], [*Raw*]),
    table.cell(rowspan: 8)[Sizes], [#text(8pt, "8pt text") \ #text(tiny, "tiny text")], sourcecode[```typst text(8pt, "8pt text")
      text(tiny "tiny text")```],
    [#text(9pt, "9pt text") \ #text(smaller, "smaller text")], sourcecode[```typst text(9pt, "9pt text")
      text(smaller "smaller text")```],
    [#text(10pt, "10pt text") \ #text(small, "small text")], sourcecode[```typst text(10pt, "10pt text")
      text(small "small text")```],
    [#text(11pt, "11pt text") \ #text(normal, "normal text")], sourcecode[```typst text(11pt, "11pt text")
      text(normal "normal text")```],
    [#text(14pt, "14pt text") \ #text(large, "large text")], sourcecode[```typst text(14pt, "14pt text")
      text(large "large text")```],
    [#text(16pt, "16pt text") \ #text(larger, "larger text")], sourcecode[```typst text(16pt, "16pt text")
      text(larger "larger text")```],
    [#text(24pt, "24pt text") \ #text(huge, "huge text")], sourcecode[```typst text(24pt, "24pt text")
      text(huge "huge text")```],
    [#text(36pt, "36pt text") \ #text(huger, "huger text")], sourcecode[```typst text(36pt, "36pt text")
      text(huger "huger text")```],
    table.cell(rowspan: 5)[Types], text(font:"Fira Sans", "Fira Sans"), sourcecode[```typst text(font:"Fira Sans", "Fira Sans")```],
    text(font:"Fira Mono", "Fira Mono"), sourcecode[```typst text(font:"Fira Mono", "Fira Mono")```],
    text(font:"Source Sans Pro", "Source Sans Pro"), sourcecode[```typst text(font:"Source Sans Pro", "Source Sans Pro")```],
    text(font:"Arial", "Arial"), sourcecode[```typst text(font:"Arial", "Arial")```],
    text(font:"Times New Roman", "Times New Roman"), sourcecode[```typst text(font:"Times New Roman", "Times New Roman")```],
    table.cell(rowspan: 9)[Alignment], [#align(start, "start")], raw("align(start){start}"),
    [#align(end, "end")], raw("align(end){end}"),
    [#align(left, "left")], raw("align(left){left}"),
    [#align(center, "center")], raw("align(center){center}"),
    [#align(right, "right")], raw("align(right){right}"),
    [#align(top, "top")], raw("align(top){top}"),
    [#align(horizon, "horizon")], raw("align(horizon){horizon}"),
    [#align(bottom, "bottom")], raw("align(bottom){bottom}"),
    [#align(center + horizon, "center + horizon")], raw("align(center + horizon){center + horizon}"),
    table.cell(rowspan: int(color-rows.len() / 2))[Colors],
    ..color-rows,
  )
)
