#import "../00-templates/helpers.typ": *

#pagebreak()
= Elements

== Headings
```typst
= Heading 1
== Heading 1.1
=== Heading 1.1.1
==== Heading 1.1.1.1
...
```

== Lists
#table(
  columns:(50%,50%),
  stroke:none,
  [
    - First
    - Second
    - Third
  ],
  ```typst
    - First
    - Second
    - Third
  ```,
  [
    - First
      - Second
        - Third
  ],
  ```typst
    - First
      - Second
        - Third
  ```,
    [
    - First
    - Second
    - Third
  ],
  ```typst
    - First
    - Second
    - Third
  ```,
  list(
    [First],
    [Second],
    [Third],
  ),
  ```typst
    list(
      [First],
      [Second],
      [Third],
    )
  ```,
  [
    + First
      + Second
    + Third
    Text
    4. Fourth
    + Fifth
  ],
  ```typst
    + First
      + Second
    + Third
    Text
    4. Fourth
    + Fifth
  ```,
  [
    + First
      #set enum(numbering: "a)")
      + Second
    + Third
    Text
    4. Fourth
    + Fifth
  ],
  ```typst

    + First
      #set enum(numbering: "a)")
      + Second
    + Third
    Text
    4. Fourth
    + Fifth
  ```,
)
== Custom Lists

```typst
#import "../00-templates/items.typ": *
```


#table(
  columns: (30%,70%),
  stroke: none,
  [#item-list(content:"item-list")
  #item-checkbadge(content:"item-checkbadge")
  #item-checkcircle(content:"item-checkcircle")
  #item-checksquare(content:"item-checksquare")
  #item-check(content:"item-check")
  #item-file(content:"item-file")
  #item-folder(content:"item-folder")
  #item-xcircle(content:"item-xcircle")
  #item-xsquare(content:"item-xsquare")
  #item-x(content:"item-x")],
  ```typst
    #item-list(content:"item-list")
    #item-checkbadge(content:"item-checkbadge")
    #item-checkcircle(content:"item-checkcircle")
    #item-checksquare(content:"item-checksquare")
    #item-check(content:"item-check")
    #item-file(content:"item-file")
    #item-folder(content:"item-folder")
    #item-xcircle(content:"item-xcircle")
    #item-xsquare(content:"item-xsquare")
    #item-x(content:"item-x")
  ```
)

== Images

=== Alignment
left
#table(
  columns: (50%,50%),
  stroke: none,
  image("../04-resources/icon.svg", width: 2cm), ```typst
                                          #image("../04-resources/icon.svg",
                                            width: 2cm)
                                          ```,
)
#align(center, "center")

#table(
  columns: (50%,50%),
  stroke: none,
  align(center, image("../04-resources/icon.svg",width: 2cm)), ```typst
                                                         #align(center,
                                                           image("../04-resources/icon.svg",
                                                             width: 2cm)
                                                         )
                                                         ```,
)

#align(right, "right")
#table(
  columns: (50%,50%),
  stroke: none,
  align(right, image("../04-resources/icon.svg",width: 2cm)), ```typst
                                                        #align(right,
                                                          image("../04-resources/icon.svg",
                                                            width: 2cm)
                                                        )
                                                        ```,
)


=== Caption
#table(
  columns: (50%,50%),
  stroke: none,
  [#figure(
    image("../04-resources/icon.svg",width: 2cm),
    caption: [ZNotes Icon],
  ) <fig-icon>],
```typst
#figure(
  image("../04-resources/icon.svg",
    width: 2cm),
  caption: [ZNotes Icon]
) <fig-icon>
```
)

=== Cluster

Two images one caption

#figure(
  tablex(
    columns: 2,
    stroke: none,
    align: center + horizon,
    image(icon, width: 2cm), image(icon, width: 2cm)
  ),
  caption: [Multiple images *one* caption]
)

```typst
#figure(
  tablex(
    columns: 2,
    stroke: none,
    align: center + horizon,
    image(icon, width: 2cm),image(icon, width: 2cm)
  ),
  caption: [Multiple images *one* caption]
)
```

Four images one caption

#figure(
  tablex(
    columns: 2,
    stroke: none,
    align: center + horizon,
    image(icon, width: 2cm), image(icon, width: 2cm),
    image(icon, width: 2cm), image(icon, width: 2cm),
  ),
  caption: [Multiple images *one* caption]
)

```typst
#figure(
  tablex(
    columns: 2,
    stroke: none,
    align: center + horizon,
    image(icon, width: 2cm), image(icon, width: 2cm),
    image(icon, width: 2cm), image(icon, width: 2cm),
  ),
  caption: [Multiple images *one* caption]
)
```

Two images two caption

#align(center,
  tablex(
    columns: 2,
    stroke: none,
    align: center + horizon,
    figure(image(icon, width: 2cm), caption: [Caption left image]), figure(image(icon, width: 2cm), caption: [Caption right image]),
))

```typst
#align(center,
  tablex(
    columns: 2,
    stroke: none,
    align: center + horizon,
    figure(image(icon, width: 2cm), caption: [Caption left image]), figure(image(icon, width: 2cm), caption: [Caption right image]),
))
```

Four images four caption

#align(center,
  tablex(
    columns: 2,
    stroke: none,
    align: center + horizon,
    figure(image(icon, width: 2cm), caption: [Caption topleft image]), figure(image(icon, width: 2cm), caption: [Caption topright image]),
    figure(image(icon, width: 2cm), caption: [Caption bottomleft image]), figure(image(icon, width: 2cm), caption: [Caption bottomright image]),
))

```typst
#align(center,
  tablex(
    columns: 2,
    stroke: none,
    align: center + horizon,
    figure(image(icon, width: 2cm), caption: [Caption topleft image]),
    figure(image(icon, width: 2cm), caption: [Caption topright image]),
    figure(image(icon, width: 2cm), caption: [Caption bottomleft image]),
    figure(image(icon, width: 2cm), caption: [Caption bottomright image]),
))
```

== Tables

For all `#tablex` command the appropriate module nedds to be imported

```typst
#import "../00-templates/tablex.typ": *
```


Tables with and without caption
#table(
  columns: (50%, 50%),
  stroke: none,
  align: center + horizon,
  tablex(
    columns: 3,
    align: center + horizon,
    []      , [*Col1*]  , [*Col2*],
    [*Row1*], "cell-0-0", "cell-1-0",
    [*Row2*], "cell-0-1", "cell-1-1",
  ),
  figure(
    tablex(
      columns: 3,
      align: center + horizon,
      []      , [*Col1*]  , [*Col2*],
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    kind: table,
    caption: [Table caption]
  ),
  ```typst
  tablex(
    columns: 3,
    align: center + horizon,
    []      , [*Col1*]  , [*Col2*],
    [*Row1*], "cell-0-0", "cell-1-0",
    [*Row2*], "cell-0-1", "cell-1-1",
  )
  ```,
  ```typst
  figure(
    tablex(
      columns: 3,
      align: center + horizon,
      []      , [*Col1*]  , [*Col2*],
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    kind: table,
    caption: [Table Caption]
  )
  ```,
)

Tables with cell spans
#table(
  columns: (50%, 50%),
  stroke: none,
  align: center + horizon,
  tablex(
    columns: 3,
    align: center + horizon,
    []      , [*Col1*]  , [*Col2*],
    [*Row1*], rowspanx(2)[cell-0], "cell-1-0",
    [*Row2*],                      "cell-1-1",
  ),
  tablex(
    columns: 3,
    align: center + horizon,
    []      , [*Col1*]  , [*Col2*],
    [*Row1*], colspanx(2)[cell-0],
    [*Row2*], "cell-0-1", "cell-1-1",
  ),
  ```typst
    tablex(
      columns: 3,
      align: center + horizon,
      []      , [*Col1*]  , [*Col2*],
      [*Row1*], rowspanx(2)[cell-0], "cell-1-0",
      [*Row2*],                      "cell-1-1",
    )
  ```,
  ```typst
    tablex(
      columns: 3,
      align: center + horizon,
      []      , [*Col1*]  , [*Col2*],
      [*Row1*], colspanx(2)[cell-0],
      [*Row2*], "cell-0-1", "cell-1-1",
    )
  ```,
)

Table Design

#table(
  columns: (50%, 50%),
  stroke: none,
  align: center + horizon,
  tablex(
    columns: 3,
    auto-vlines: false,
    align: center + horizon,

    []      , [*Col1*]  , [*Col2*],
    [*Row1*], "cell-0-0", "cell-1-0",
    [*Row2*], "cell-0-1", "cell-1-1",
  ),
  tablex(
    columns: 3,
    auto-hlines: false,
    align: center + horizon,
    []      , [*Col1*]  , [*Col2*],
    [*Row1*], "cell-0-0", "cell-1-0",
    [*Row2*], "cell-0-1", "cell-1-1",
  ),
  ```typst
    tablex(
      columns: 3,
      auto-vlines: false,
      align: center + horizon,
      []      , [*Col1*]  , [*Col2*],
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    )
  ```,
  ```typst
    tablex(
      columns: 3,
      auto-hlines: false,
      align: center + horizon,
      []      , [*Col1*]  , [*Col2*],
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    )
  ```,
)

#tablex(
  columns: 3,
  auto-lines: false,
  align: center + horizon,
  (), vlinex(stroke: blue) , vlinex(), (),
  []      , [*Col1*]  , [*Col2*], hlinex(stroke: red),
  [*Row1*], "cell-0-0", "cell-1-0", hlinex(),
  [*Row2*], "cell-0-1", "cell-1-1",
)
```typst
  #tablex(
  columns: 3,
  auto-lines: false,
  align: center + horizon,
  (), vlinex(stroke: blue) , vlinex(), (),
  []      , [*Col1*]  , [*Col2*], hlinex(stroke: red),
  [*Row1*], "cell-0-0", "cell-1-0", hlinex(),
  [*Row2*], "cell-0-1", "cell-1-1",
)
```

#tablex(
  columns: 6,
  auto-vlines: false,
  auto-hlines: false,
  stroke: 0.5pt,
  align: center+ horizon,
  (), vlinex(), vlinex(), vlinex(stroke: 1pt) , vlinex(), vlinex(stroke:1pt),
  [$c$], [$b$], [$a$], [$c b$], [$b a$], [$y$], hlinex(stroke: 1pt),
  [`0`], [`0`], [`0`], [`0`],   [`0`],   [`0`], hlinex(stroke: 0.5pt),
  [`0`], [`0`], [`1`], [`0`],   [`0`],   [`1`], hlinex(stroke: 0.5pt),
  [`0`], [`1`], [`0`], [`0`],   [`0`],   [`0`], hlinex(stroke: 0.5pt),
  [`0`], [`1`], [`1`], [`0`],   [`1`],   [`0`], hlinex(stroke: 1pt),
  [`1`], [`0`], [`0`], [`0`],   [`0`],   [`0`], hlinex(stroke: 0.5pt),
  [`1`], [`0`], [`1`], [`0`],   [`0`],   [`1`], hlinex(stroke: 0.5pt),
  [`1`], [`1`], [`0`], [`1`],   [`0`],   [`1`], hlinex(stroke: 0.5pt),
  [`1`], [`1`], [`1`], [`1`],   [`1`],   [`1`],
)

```typst
#tablex(
  columns: 6,
  auto-vlines: false,
  auto-hlines: false,
  stroke: 0.5pt,
  align: center+ horizon,
  (), vlinex(), vlinex(), vlinex(stroke: 1pt) , vlinex(), vlinex(stroke:1pt),
  [$c$], [$b$], [$a$], [$c b$], [$b a$], [$y$], hlinex(stroke: 1pt),
  [`0`], [`0`], [`0`], [`0`],   [`0`],   [`0`], hlinex(stroke: 0.5pt),
  [`0`], [`0`], [`1`], [`0`],   [`0`],   [`1`], hlinex(stroke: 0.5pt),
  [`0`], [`1`], [`0`], [`0`],   [`0`],   [`0`], hlinex(stroke: 0.5pt),
  [`0`], [`1`], [`1`], [`0`],   [`1`],   [`0`], hlinex(stroke: 1pt),
  [`1`], [`0`], [`0`], [`0`],   [`0`],   [`0`], hlinex(stroke: 0.5pt),
  [`1`], [`0`], [`1`], [`0`],   [`0`],   [`1`], hlinex(stroke: 0.5pt),
  [`1`], [`1`], [`0`], [`1`],   [`0`],   [`1`], hlinex(stroke: 0.5pt),
  [`1`], [`1`], [`1`], [`1`],   [`1`],   [`1`],
)
```

#if option.type == "full" {[

=== Karnaugh Tables

```typst
#import "../00-templates/karnaugh.typ"
```

#table(
  columns: (50%,50%),
  stroke: none,
  [#karnaugh(content:((1, 0, 1, 0),
                      (1, 0, 1, 1),))],
```typst
#karnaugh(content:((1, 0, 1, 0),
                   (1, 0, 1, 1),))
```
)

#table(
  columns: (50%,50%),
  stroke: none,
  [#karnaugh(content:((1, 0, 0, 0),
                      (1, 0, 0, 1),
                      (1, 1, 0, 1),
                      (1, 0, 1, 1),))],
```typst
#karnaugh(content:((1, 0, 0, 0),
                   (1, 0, 0, 1),
                   (1, 1, 0, 1),
                   (1, 0, 1, 1),))
```
)

#table(
  columns: (60%,43%),
  stroke: none,
  [#karnaugh(content:((1, 0, 0, 0),
                      (1, 0, 1, 1),
                      (1, 0, 1, 1),
                      (1, 0, 0, 1),

                      (1, 0, 0, 1),
                      (1, 0, 0, 1),
                      (1, 1, 0, 1),
                      (1, 1, 0, 1),))],
```typst
#karnaugh(content:((1, 0, 0, 0),
                   (1, 0, 1, 1),
                   (1, 0, 1, 1),
                   (1, 0, 0, 1),

                   (1, 0, 0, 1),
                   (1, 0, 0, 1),
                   (1, 1, 0, 1),
                   (1, 1, 0, 1),))
```
)

#karnaugh(inputs: ($Q_0$,$Q_1$,$Q_2$,$Q_3$,$Q_4$),
             output: [$Q_0^+$],
             content:((1, 0, 0, 0),
                      (1, 0, 1, 1),
                      (1, 0, 1, 1),
                      (1, 0, 0, 1),

                      (1, 0, 0, 1),
                      (1, 0, 0, 1),
                      (1, 1, 0, 1),
                      (1, 1, 0, 1),)),

```typst
#karnaugh(inputs: ($Q_0$,$Q_1$,$Q_2$,$Q_3$,$Q_4$),
          output: [$Q_0^+$],
          content:((1, 0, 0, 0),
                   (1, 0, 1, 1),
                   (1, 0, 1, 1),
                   (1, 0, 0, 1),

                   (1, 0, 0, 1),
                   (1, 0, 0, 1),
                   (1, 1, 0, 1),
                   (1, 1, 0, 1),))
```
]}

== Icon Boxes

```typst
#import "../00-templates/boxes.typ": *
```

#infobox()[
  #align(left,
  ```typst
#infobox()["infobox"]
  ```)
]
#ideabox()[
  #align(left,
  ```typst
#ideabox()["ideabox"]
  ```)
]
#warningbox()[
  #align(left,
  ```typst
#warningbox()["warningbox"]
  ```)
]
#importantbox()[
  #align(left,
  ```typst
#importantbox()["importantbox"]
  ```)
]
#firebox()[
  #align(left,
  ```typst
#firebox()["firebox"]
  ```)
]
#rocketbox()[
  #align(left,
  ```typst
#rocketbox()["rocketbox"]
  ```)
]
#todobox()[
  #align(left,
  ```typst
#todobox()["todobox"]
  ```)
]
#iconbox(icon:"../04-resources/placeholder.svg", linecolor: hei-blue)[
  #align(left,
  ```typst
#iconbox(icon:"../04-resources/placeholder.svg", linecolor: hei-blue)["iconbox"]
  ```)
]
#iconbox(linecolor: hei-pink)[
  #align(left,
  ```typst
#iconbox(linecolor: hei-pink)["iconbox without icon"]
  ```)
]

== Color Boxes

```typst
#import "../00-templates/boxes.typ": *
```

#colorbox( title: "Exercise", color:hei-blue)[
  Some text
  ```typst
#colorbox( title: "Exercise", color:hei-blue)[Some text]
  ```
]

#colorbox( title: "Attention", color:hei-pink)[
  Some text
  ```typst
#colorbox( title: "Attention", color:hei-pink)[Some text]
  ```
]

#slantedColorbox( title: "Consider", color:hei-green)[
  Some text
  ```typst
#slantedColorbox( title: "Consider", color:hei-green)[Some text]
  ```
]

#slantedColorbox( title: "Information", color:hei-orange)[
  Some text
  ```typst
#slantedColorbox( title: "Information", color:hei-orange)[Some text]
  ```
]

== Title Box

```typst
#import "../00-templates/sections.typ": *
```

#titlebox(title:[Title], subtitle:[Subtitle])
```typst
#titlebox(title:[Title], subtitle:[Subtitle])
```
#titlebox(width:50%, radius:0pt, border:1pt, linecolor: hei-blue, titlesize: larger, subtitlesize: large, title:[Title], subtitle:[Subtitle])
```typst
#titlebox(width:50%, radius:0pt, border:1pt, linecolor: hei-blue, titlesize: larger, subtitlesize: large, title:[Title], subtitle:[Subtitle])
```
#titlebox(linecolor: hei-green, titlesize: larger, subtitlesize: large, title:[Title])
```typst
#titlebox(linecolor: hei-green, titlesize: larger, subtitlesize: large, title:[Title])
```

#if option.type == "full" {[

== Exam Header

```typst
#import "../00-templates/sections.typ": *
```

#exam_header(nbrEx:0, lang: "en")
```typst
#exam_header(nbrEx:0, lang: "en")
```
#exam_header(nbrEx:1, lang: "en")
```typst
#exam_header(nbrEx:1, lang: "en")
```
#exam_header(nbrEx:2, pts:10, lang: "en")
```typst
#exam_header(nbrEx:2, pts:10, lang: "en")
```
#exam_header(nbrEx:3, pts:10, lang: "en")
```typst
#exam_header(nbrEx:3, pts:10, lang: "en")
```
#exam_header(nbrEx:4, pts:10, lang: "en")
```typst
#exam_header(nbrEx:4, pts:10, lang: "en")
```
#exam_header(nbrEx:5, pts:10, lang: "en")
```typst
#exam_header(nbrEx:5, pts:10, lang: "en")
```
#exam_header(nbrEx:6, pts:10, lang: "en")
```typst
#exam_header(nbrEx:6, pts:10, lang: "en")
```
#exam_header(nbrEx:7, pts:10, lang: "en")
```typst
#exam_header(nbrEx:7, pts:10, lang: "en")
```
#exam_header(nbrEx:8, pts:10, lang: "en")
```typst
#exam_header(nbrEx:8, pts:10, lang: "en")
```
#exam_header(nbrEx:9, pts:10, lang: "en")
```typst
#exam_header(nbrEx:9, pts:10, lang: "en")
```
#exam_header(nbrEx:10, pts:10, lang: "en")
```typst
#exam_header(nbrEx:10, pts:10, lang: "en")
```

== Exam Reminder

```typst
#import "../00-templates/sections.typ": *
```

#exam_reminder_did(lang: "en")
```typst
#exam_reminder_did(lang: "en")
```
#exam_reminder_did(lang: "de")
```typst
#exam_reminder_did(lang: "de")
```
#exam_reminder_did(lang: "fr")
```typst
#exam_reminder_did(lang: "fr")
```

#exam_reminder_car(lang: "en")
```typst
#exam_reminder_car(lang: "en")
```
#exam_reminder_car(lang: "de")
```typst
#exam_reminder_car(lang: "de")
```
#exam_reminder_car(lang: "fr")
```typst
#exam_reminder_car(lang: "fr")
```

== Exercise Message

```typst
#import "../00-templates/sections.typ": *
```

#exercises_solution_hints(lang: "en")
```typst
#exercises_solution_hints(lang: "en")
```
#exercises_solution_hints(lang: "de")
```typst
#exercises_solution_hints(lang: "de")
```
#exercises_solution_hints(lang: "fr")
```typst
#exercises_solution_hints(lang: "fr")
```

]}
