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
    table.cell(rowspan: 30)[Colors], [#text(fill:black)[black]], raw("#text(fill:black)[black]"),
    [#text(fill:red)[red]], raw("#text(fill:red)[red]"),
    [#text(fill:green)[green]], raw("#text(fill:green)[green]"),
    [#text(fill:blue)[blue]], raw("#text(fill:blue)[blue]"),
    [#text(fill:purple)[purple]], raw("#text(fill:purple)[purple]"),
    [#text(fill:gray-80)[gray-80]], raw("#text(fill:gray-80)[gray-80]"),
    [#text(fill:gray-70)[gray-70]], raw("#text(fill:gray-70)[gray-70]"),
    [#text(fill:gray-60)[gray-60]], raw("#text(fill:gray-60)[gray-60]"),
    [#text(fill:gray-50)[gray-50]], raw("#text(fill:gray-50)[gray-50]"),
    [#text(fill:gray-40)[gray-40]], raw("#text(fill:gray-40)[gray-40]"),
    [#text(fill:gray-30)[gray-30]], raw("#text(fill:gray-30)[gray-30]"),
    [#text(fill:gray-20)[gray-20]], raw("#text(fill:gray-20)[gray-20]"),
    [#text(fill:gray-10)[gray-10]], raw("#text(fill:gray-10)[gray-10]"),
    [#text(fill:hei-orange)[hei-orange]], raw("#text(fill:hei-orange)[hei-orange]"),
    [#text(fill:hei-blue)[hei-blue]], raw("#text(fill:hei-blue)[hei-blue]"),
    [#text(fill:hei-pink)[hei-pink]], raw("#text(fill:hei-pink)[hei-pink]"),
    [#text(fill:hei-yellow)[hei-yellow]], raw("#text(fill:hei-yellow)[hei-yellow]"),
    [#text(fill:hei-green)[hei-green]], raw("#text(fill:hei-green)[hei-green]"),
    [#text(fill:spl-green)[spl-green]], raw("#text(fill:spl-green)[spl-green]"),
    [#text(fill:spl-blue)[spl-blue]], raw("#text(fill:spl-blue)[spl-blue]"),
    [#text(fill:spl-pink)[spl-pink]], raw("#text(fill:spl-pink)[spl-green]"),
    [#text(fill:color-info)[color-info]], raw("#text(fill:color-info)[color-info]"),
    [#text(fill:color-idea)[color-idea]], raw("#text(fill:color-idea)[color-idea]"),
    [#text(fill:color-warning)[color-warning]], raw("#text(fill:color-warning)[color-warning]"),
    [#text(fill:color-important)[color-important]], raw("#text(fill:color-important)[color-important]"),
    [#text(fill:color-fire)[color-fire]], raw("#text(fill:color-fire)[color-fire]"),
    [#text(fill:color-rocket)[color-rocket]], raw("#text(fill:color-rocket)[color-rocket]"),
    [#text(fill:color-todo)[color-todo]], raw("#text(fill:color-todo)[color-todo]"),
    [#text(fill:code-bg)[code-bg]], raw("#text(fill:code-bg)[code-bg]"),
    [#text(fill:code-border)[code-border]], raw("#text(fill:code-border)[code-border]"),
  )
)
