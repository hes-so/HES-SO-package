#import "/01-settings/metadata.typ": *
#pagebreak()
= References <sec:ref>
== Links <sec:links>

#figure(
  table(
    columns: 2,
    align: left + horizon,
    [*Example*], [*Raw*],
    [https://tschinz.github.io], `https://tschinz.github.io`,
    [#link("https://tschinz.github.io")], `#link("https://tschinz.github.io")`,
    [#link("https://tschinz.github.io")[See https://tschinz.github.io]], `#link("https://tschinz.github.io")[See https://tschinz.github.iox]`,
    [#link("mailto:silvan.zahno@hevs.com")[silvan.zahno\@hevs.ch]], `#link("mailto:silvan.zahno@hevs.com")[silvan.zahno\@hevs.ch]`,
    [#link("https://tschinz.github.io")[#image(icon, width:0.5cm)]], `#link("https://tschinz.github.io")[#image(icon, width:0.5cm)]`,
  ),
  kind:table,
  caption:[Links]) <tab:links>

== Crossreferences <sec:crossref>

In the document the following references were added.

#figure(
align(left, sourcecode[```typst

= References <sec:ref>
== Links <sec:links>
#figure(image("/04-resources/icon.svg", width: 2cm)) <fig:icon>
#figure(table(...), kind:table) <tab:links>
#figure(align(left, raw(...)) <code-ref>
$ sum_(k=1)^n k = (n(n+1)) / 2 $ <math-eq1> #ref(<math-eq1>)
```]),
kind: raw,
caption: [Label inserts]
) <code-ref>

They can be references as follows:

#align(center,
  table(
    columns: 3,
    align: left + horizon,
    [*Type*], [*Example*], [*Raw*],
    "Section", [@sec:ref], `@sec:ref`,
    "Subsection", [@sec:links], `@sec:links`,
    "Figure", [@fig:icon], `@fig:icon`,
    "Table", [@tab:links], `@tab:links`,
    "Code", [@code-ref], `@code-ref`,
    "Equation", [@math-eq1], `@math-eq1`,
  )
)

== External References

#table(
  stroke: none,
  columns: (20%, 80%),
  align: horizon,
  table.header([*Example*], [*Raw*]),
  [#cite(label("zahnoDynamicProjectPlanning2023"))], ```typst #cite(label("zahnoDynamicProjectPlanning2023")) ```,
  [#cite(<zahnoDynamicProjectPlanning2023>, supplement:[p.7ff])], ```typst #cite(<zahnoDynamicProjectPlanning2023>, supplement:[p.7ff]) ```,

  [@zahnoDynamicProjectPlanning2023], ```typst @zahnoDynamicProjectPlanning2023 ```,
)

== Glossary <sec:glossary>

The glossary entries need to be defined in `/03-tail/glossary.typ`.

#sourcecode[```typst
#let entry-list = (
  (
    key   : "hei",
    short : "HEI",
    long  : "Haute École d'Ingénierie",
  ),
  (
    key         : "fpga",
    short       : "FPGA",
    plural      : "FPGAs",
    long        : "Field Programmable Gate Array",
    longplural  : "Field Programmable Gate Arrays",
    group       : "Technology"
    description : "A field-programmable gate array (FPGA) is an integrated circuit designed to be configured by a customer or a designer after manufacturing – hence the term 'field-programmable'.",
  ),
)
```]

For the glossary functions library #link("https://typst.app/universe/package/glossarium/")[Glossarium] is used. It can also be used for acronyms.

#table(
  stroke: none,
  columns: (30%, 70%),
  align: horizon,
  [*Example*], [*Raw*],
  [#gls("hei") and a second time #gls("hei")], sourcecode[```typst
#gls("hei") and a second time #gls("hei")
```],
[#gls("hei", first:true)], sourcecode[```typst
  #gls("hei", first:true)
```],
[#gls-long("hei")], sourcecode[```typst
  #gls-long("hei")
```],
  [#gls("hei", display: "whatever you want")], sourcecode[```typst
#gls("hei", display: "whatever you want"))
```],
  [#glspl("fpga") and a second time #glspl("fpga")], sourcecode[```typst
#glspl("fpga") and a second time #glspl("fpga")
```],
  [#glspl("fpga", first: true)], sourcecode[```typst
#glspl("fpga", first: true))
```],
  [#gls-longplural("fpga")], sourcecode[```typst
#glspl-longplural("fpga"))
```],
)

#gls("it") is a specialization of #gls("synd") which is part of the #gls("hei"). The second time a glossary entry is used the short form will be used: see #gls("it") and #gls("synd"). To get the first form back use #gls("synd", first:true).
