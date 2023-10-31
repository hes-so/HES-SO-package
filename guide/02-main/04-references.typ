#import "../00-templates/helpers.typ": *
#import "../03-tail/glossary.typ": *

#pagebreak()

= References <sec-ref>

== Links <sec-links>

#figure(
  tablex(
    columns: 2,
    align: left + horizon,
    auto-vlines: false,
    [*Example*], [*Raw*],
    [https://example.com], `https://example.com`,
    [#link("https://example.com")], `#link("https://example.com")`,
    [#link("https://example.com")[See example.com]], `#link("https://example.com")[See example.com]`,
    [#link("mailto:whynotlogic@gmail.com")[whynotlogic\@gmail.com]], `#link("mailto:whynotlogic@gmail.com")[whynotlogic\@gmail.com]`,
    [#link("https://tschinz.github.io/znotes")[#image(icon, width:0.5cm)]], `#link("https://tschinz.github.io/znotes")[#image(icon, width:0.5cm)]`,
  ),
  kind:table,
  caption:[Links]) <tab-links>

== Crossreferences <sec-crossref>

In the document the following references were added.

#figure(
align(left, ```typst
= References <sec-ref>
== Links <sec-links>
#figure(image("../04-resources/icon.svg", width: 2cm)) <fig-icon>
#figure(tablex(...), kind:table) <tab-links>
#figure(align(left, raw(...)) <code-ref>
$ sum_(k=1)^n k = (n(n+1)) / 2 $ <math-eq1> #ref(<math-eq1>)
```),
kind: raw,
caption: [Label inserts]
) <code-ref>

They can be references as follows:

#align(center,
  tablex(
    columns: 3,
    align: left + horizon,
    auto-vlines: false,
    [*Type*], [*Example*], [*Raw*],
    "Section", [@sec-ref], `@sec-ref`,
    "Subsection", [@sec-links], `@sec-links`,
    //"Figure", [@fig-icon], `@fig-icon`,
    "Table", [@tab-links], `@tab-links`,
    "Code", [@code-ref], `@code-ref`,
    //"Equation", [@math-eq1], `@math-eq1`,
  )
)

== External References

#table(
  stroke: none,
  columns: (50%, 50%),
  align: horizon,
  [*Example*], [*Raw*],
  [#cite(label("stateoftheArt"))], ```typst #cite(label("stateoftheArt")) ```,
  [#cite(<stateoftheArt>, supplement:[p.7ff])], ```typst #cite(<stateoftheArt>, supplement:[p.7ff]) ```,

  [@stateoftheArt], ```typst @stateoftheArt ```,
)

== Glossary

The glossary entries need to be defined in `03-tail/glossary.typ`. For the glossary functions the "import" of `01-head/helpers.typ` is needed.

```typst
#import "../01-head/helpers.typ": *
#import "../03-tail/glossary.typ": *
```

#table(
  stroke: none,
  columns: (50%, 50%),
  align: horizon,
  [*Example*], [*Raw*],
  [#gls-scrumm.name], ```typst
#gls-scrumm.name
```,
  [#gls-scrumm.description], ```typst
#gls-scrumm.description
```,
)

== Acronym

The acronym entries need to be defined in `03-tail/glossary.typ`. For the acronym functions the "import" of `01-head/helpers.typ` is needed.

```typst
#import "../01-head/helpers.typ": *
#import "../03-tail/glossary.typ": *
```

#table(
  stroke: none,
  columns: (50%, 50%),
  align: horizon,
  [*Example*], [*Raw*],
  [#acr-ar.abbr], ```typst #acr-ar.abr ```,
  [#acrshort(acr-ar)], ```typst #acrshort(acr-ar.abbr) ```,
  [#acr-ar.long], ```typst #acr-ar.long ```,
  [#acrlong(acr-ar)], ```typst #acrlong(acr-ar) ```,
  [#acr-ar.long (#acr-ar.abbr)], ```typst #acr-ar.long (#acr-ar.abbr) ```,
  [#acrfull(acr-ar)], ```typst #acrfull(acr-ar) ```,
)