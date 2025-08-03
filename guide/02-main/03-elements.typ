#import "/01-settings/metadata.typ": *
#import "/00-templates/karnaugh.typ": *
#import "/00-templates/sections.typ": *
#pagebreak()
= Elements <sec:elem>
#add-chapter(
  after: <sec:elem>,
  before: <sec:ref>,
)[
  == Headings
  #sourcecode[```typst
  = Heading 1
  == Heading 1.1
  === Heading 1.1.1
  ==== Heading 1.1.1.1
  ...
  ```]

  == Lists
  #table(
    columns:(50%,50%),
    stroke:none,
    [
      - First
      - Second
      - Third
    ],
    sourcecode[```typst
      - First
      - Second
      - Third
    ```],
    [
      - First
        - Second
          - Third
    ],
    sourcecode[```typst
      - First
        - Second
          - Third
    ```],
      [
      - First
      - Second
      - Third
    ],
    sourcecode[```typst
      - First
      - Second
      - Third
    ```],
    list(
      [First],
      [Second],
      [Third],
    ),
    sourcecode[```typst
      list(
        [First],
        [Second],
        [Third],
      )
    ```],
    [
      + First
        + Second
      + Third
      Text
      4. Fourth
      + Fifth
    ],
    sourcecode[```typst
      + First
        + Second
      + Third
      Text
      4. Fourth
      + Fifth
    ```],
    [
      + First
        #set enum(numbering: "a)")
        + Second
      + Third
      Text
      4. Fourth
      + Fifth
    ],
    sourcecode[```typst

      + First
        #set enum(numbering: "a)")
        + Second
      + Third
      Text
      4. Fourth
      + Fifth
    ```],
  )
  == Custom Lists

  #sourcecode[```typst
  #import "/00-templates/items.typ": *
  ```]


  #table(
    columns: (40%,60%),
    stroke: none,
    [#item-list()[item-list]
      #item-checkbadge()[item-checkbadge]
      #item-circle()[item-circle]
      #item-square()[item-square]
      #item-checkcircle()[item-checkcircle]
      #item-checksquare()[item-checksquare]
      #item-check()[item-check]
      #item-file()[item-file]
      #item-folder()[item-folder]
      #item-xcircle()[item-xcircle]
      #item-xsquare()[item-xsquare]
      #item-x()[item-x]],
    sourcecode[```typst
      #item-list()[item-list]
      #item-checkbadge()[item-checkbadge]
      #item-circle()[item-circle]
      #item-square()[item-square]
      #item-checkcircle()[item-checkcircle]
      #item-checksquare()[item-checksquare]
      #item-check()[item-check]
      #item-file()[item-file]
      #item-folder()[item-folder]
      #item-xcircle()[item-xcircle]
      #item-xsquare()[item-xsquare]
      #item-x()[item-x]
    ```]
  )

  == Minitoc

  The `minitoc` is specific for this template and allows to show a TOC between two labels. The `minitoc` is also used within the `#add-chapter` function if `after` and `before ` labels are defined.

  #minitoc(after: <sec:elem>, before: <sec:ref>)

  #sourcecode[```typst
  #minitoc(after: <sec:elem>, before: <sec:ref>)
  ```]

  #sourcecode[```typst
  #add-chapter(
    "/02-main/03-elements.typ",
    after: <sec:elem>,
    before: <sec:ref>,
  )
  // or
  #add-chapter(
    after: <sec:elem>,
    before: <sec:ref>,
  )[
    Content of the Chapter
  ]
  ```]

  == Images

  === Alignment
  left
  #table(
    columns: (50%,50%),
    stroke: none,
    image("/04-resources/icon.svg", width: 2cm), sourcecode[```typst
                                            #image("/04-resources/icon.svg",
                                              width: 2cm)
                                            ```],
  )
  #align(center, "center")

  #table(
    columns: (50%,50%),
    stroke: none,
    align(center, image("/04-resources/icon.svg",width: 2cm)), sourcecode[```typst
                                                          #align(center,
                                                            image("/04-resources/icon.svg",
                                                              width: 2cm)
                                                          )
                                                          ```],
  )

  #align(right, "right")
  #table(
    columns: (50%,50%),
    stroke: none,
    align(right, image("/04-resources/icon.svg",width: 2cm)), sourcecode[```typst
                                                          #align(right,
                                                            image("/04-resources/icon.svg",
                                                              width: 2cm)
                                                          )
                                                          ```],
  )


  === Caption
  #table(
    columns: (50%,50%),
    stroke: none,
    [#figure(
      image("/04-resources/icon.svg",width: 2cm),
      caption: [One image one caption],
    ) <fig:icon>],
  sourcecode[```typst
  #figure(
    image("/04-resources/icon.svg",
      width: 2cm),
    caption: [One image one caption]
  ) <fig:icon>
  ```]
  )

  === Cluster

  Two images one caption

  #figure(
    table(
      columns: 2,
      stroke: none,
      align: center + horizon,
      image(icon, width: 2cm), image(icon, width: 2cm)
    ),
    caption: [Multiple images *one* caption]
  )

  #sourcecode[```typst
  #figure(
    table(
      columns: 2,
      stroke: none,
      align: center + horizon,
      image(icon, width: 2cm),image(icon, width: 2cm)
    ),
    caption: [Multiple images *one* caption]
  )
  ```]

  Four images one caption

  #figure(
    table(
      columns: 2,
      stroke: none,
      align: center + horizon,
      image(icon, width: 2cm), image(icon, width: 2cm),
      image(icon, width: 2cm), image(icon, width: 2cm),
    ),
    caption: [Multiple images *one* caption]
  )

  #sourcecode[```typst
  #figure(
    table(
      columns: 2,
      stroke: none,
      align: center + horizon,
      image(icon, width: 2cm), image(icon, width: 2cm),
      image(icon, width: 2cm), image(icon, width: 2cm),
    ),
    caption: [Multiple images *one* caption]
  )
  ```]

  Two images two caption

  #align(center,
    table(
      columns: 2,
      stroke: none,
      align: center + horizon,
      figure(image(icon, width: 2cm), caption: [Caption left image]), figure(image(icon, width: 2cm), caption: [Caption right image]),
  ))

  #sourcecode[```typst
  #align(center,
    table(
      columns: 2,
      stroke: none,
      align: center + horizon,
      figure(image(icon, width: 2cm), caption: [Caption left image]), figure(image(icon, width: 2cm), caption: [Caption right image]),
  ))
  ```]

  Four images four caption

  #align(center,
    table(
      columns: 2,
      stroke: none,
      align: center + horizon,
      figure(image(icon, width: 2cm), caption: [Caption topleft image]), figure(image(icon, width: 2cm), caption: [Caption topright image]),
      figure(image(icon, width: 2cm), caption: [Caption bottomleft image]), figure(image(icon, width: 2cm), caption: [Caption bottomright image]),
  ))

  #sourcecode[```typst
  #align(center,
    table(
      columns: 2,
      stroke: none,
      align: center + horizon,
      figure(image(icon, width: 2cm), caption: [Caption topleft image]),
      figure(image(icon, width: 2cm), caption: [Caption topright image]),
      figure(image(icon, width: 2cm), caption: [Caption bottomleft image]),
      figure(image(icon, width: 2cm), caption: [Caption bottomright image]),
  ))
  ```]

  == Tables

  For new table use the integrated `#table` command for legacy the `tablex` plugin is also imported.

  #sourcecode[```typst
  #import "@preview/tablex:0.0.9" : *
  // or
  #import "/00-templates/helpers.typ": *
  ```]



  Tables with and without caption
  #table(
    columns: (50%, 50%),
    stroke: none,
    align: center + horizon,
    table(
      columns: 3,
      align: center + horizon,
      table.header([]      , [*Col1*]  , [*Col2*],),
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    figure(
      table(
        columns: 3,
        align: center + horizon,
        table.header([], [*Col1*]  , [*Col2*],),
        [*Row1*], "cell-0-0", "cell-1-0",
        [*Row2*], "cell-0-1", "cell-1-1",
      ),
      kind: table,
      caption: [Table caption]
    ),
    sourcecode[```typst
    table(
      columns: 3,
      align: center + horizon,
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    )
    ```],
    sourcecode[```typst
    figure(
      table(
        columns: 3,
        align: center + horizon,
        table.header([], [*Col1*]  , [*Col2*],),
        [*Row1*], "cell-0-0", "cell-1-0",
        [*Row2*], "cell-0-1", "cell-1-1",
      ),
      kind: table,
      caption: [Table Caption]
    )
    ```],
  )

  Tables with cell spans
  #table(
    columns: (50%, 50%),
    stroke: none,
    align: center + horizon,
    table(
      columns: 3,
      align: center + horizon,
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], table.cell(rowspan: 2)[cell-0], "cell-1-0",
      [*Row2*],                                 "cell-1-1",
    ),
    table(
      columns: 3,
      align: center + horizon,
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], table.cell(colspan: 2)[cell-0],
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    sourcecode[```typst
      table(
        columns: 3,
        align: center + horizon,
        table.header([], [*Col1*]  , [*Col2*],),
        [*Row1*], table.cell(rowspan: 2)[cell-0], "cell-1-0",
        [*Row2*],                                 "cell-1-1",
      )
    ```],
    sourcecode[```typst
      table(
        columns: 3,
        align: center + horizon,
        table.header([], [*Col1*]  , [*Col2*],),
        [*Row1*], table.cell(colspan: 2)[cell-0],
        [*Row2*], "cell-0-1", "cell-1-1",
      )
    ```],
  )

  Table Design

  #table(
    columns: (50%, 50%),
    stroke: none,
    align: center + horizon,
    table(
      columns: 3,
      align: center + horizon,
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    table(
      columns: 3,
      align: center + horizon,
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    sourcecode[```typst
      table(
        columns: 3,
        align: center + horizon,
        table.header([], [*Col1*]  , [*Col2*],),
        [*Row1*], "cell-0-0", "cell-1-0",
        [*Row2*], "cell-0-1", "cell-1-1",
      )
    ```],
    sourcecode[```typst
      table(
        columns: 3,
        align: center + horizon,
        table.header([], [*Col1*]  , [*Col2*],),
        [*Row1*], "cell-0-0", "cell-1-0",
        [*Row2*], "cell-0-1", "cell-1-1",
      )
    ```],
    table(
      columns: 3,
      align: center + horizon,
      table.vline(x:0, stroke: none), table.vline(x:1 , stroke: blue), table.vline(x:2),
      table.header([]      , [*Col1*]  , [*Col2*], table.hline(stroke: red)),
      [*Row1*], "cell-0-0", "cell-1-0", table.hline(),
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    table(
      columns: 3,
      align: center + horizon,
      stroke: (x:none),
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    sourcecode[```typst
      table(
        columns: 3,
        align: center + horizon,
        table.vline(x:0, stroke: none), table.vline(x:1 , stroke: blue), table.vline(x:2),
        table.header([]      , [*Col1*]  , [*Col2*], table.hline(stroke: red)),
        [*Row1*], "cell-0-0", "cell-1-0", table.hline(),
        [*Row2*], "cell-0-1", "cell-1-1",
      )
    ```],
    sourcecode[```typst
    table(
      columns: 3,
      align: center + horizon,
      stroke: (x:none),
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    ```],
    table(
      columns: 3,
      align: center + horizon,
      stroke: (y:none),
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    table(
      columns: 3,
      align: center + horizon,
      stroke: (x:none),
      table.hline(y:0, stroke:none), // remove first line
      table.hline(y:3, stroke:none), // remove last line
      table.vline(x:1),
      table.vline(x:2, start:1, end:2, stroke: red),
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    sourcecode[```typst
    table(
      columns: 3,
      align: center + horizon,
      stroke: (y:none),
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    ```],
    sourcecode[```typst
      table(
        columns: 3,
        align: center + horizon,
        stroke: (x:none),
        table.hline(y:0, stroke:none), // remove first line
        table.hline(y:3, stroke:none), // remove last line
        table.vline(x:1),
        table.vline(x:2, start:1, end:2, stroke: red),
        table.header([], [*Col1*]  , [*Col2*],),
        [*Row1*], "cell-0-0", "cell-1-0",
        [*Row2*], "cell-0-1", "cell-1-1",
      ),
    ```]
  )


  #sourcecode[```typst
  #table(
    columns: 3,
    align: center + horizon,
    table.vline(x:0, stroke: none), table.vline(x:1 , stroke: blue), table.vline(x:2),
    table.header([]      , [*Col1*]  , [*Col2*], table.hline(stroke: red)),
    [*Row1*], "cell-0-0", "cell-1-0", table.hline(),
    [*Row2*], "cell-0-1", "cell-1-1",
  )
  ```]

  #table(
    columns: 6,
    stroke: none,
    align: center+ horizon,
    table.vline(x:1, stroke:0.5pt), table.vline(x:2, stroke:0.5pt), table.vline(x:3), table.vline(x:4, stroke:0.5pt), table.vline(x:5, stroke:0.5pt),
    table.header([$c$], [$b$], [$a$], [$c b$], [$b a$], [$y$], table.hline(stroke: 1pt)),
    [`0`], [`0`], [`0`], [`0`],   [`0`],   [`0`], table.hline(stroke: 0.5pt),
    [`0`], [`0`], [`1`], [`0`],   [`0`],   [`1`], table.hline(stroke: 0.5pt),
    [`0`], [`1`], [`0`], [`0`],   [`0`],   [`0`], table.hline(stroke: 0.5pt),
    [`0`], [`1`], [`1`], [`0`],   [`1`],   [`0`], table.hline(stroke: 1pt),
    [`1`], [`0`], [`0`], [`0`],   [`0`],   [`0`], table.hline(stroke: 0.5pt),
    [`1`], [`0`], [`1`], [`0`],   [`0`],   [`1`], table.hline(stroke: 0.5pt),
    [`1`], [`1`], [`0`], [`1`],   [`0`],   [`1`], table.hline(stroke: 0.5pt),
    [`1`], [`1`], [`1`], [`1`],   [`1`],   [`1`],
  )

  #sourcecode[```typst
  #table(
    columns: 6,
    stroke: none,
    align: center+ horizon,
    table.vline(x:1, stroke:0.5pt), table.vline(x:2, stroke:0.5pt), table.vline(x:3), table.vline(x:4, stroke:0.5pt), table.vline(x:5, stroke:0.5pt),
    table.header([$c$], [$b$], [$a$], [$c b$], [$b a$], [$y$], table.hline(stroke: 1pt)),
    [`0`], [`0`], [`0`], [`0`],   [`0`],   [`0`], table.hline(stroke: 0.5pt),
    [`0`], [`0`], [`1`], [`0`],   [`0`],   [`1`], table.hline(stroke: 0.5pt),
    [`0`], [`1`], [`0`], [`0`],   [`0`],   [`0`], table.hline(stroke: 0.5pt),
    [`0`], [`1`], [`1`], [`0`],   [`1`],   [`0`], table.hline(stroke: 1pt),
    [`1`], [`0`], [`0`], [`0`],   [`0`],   [`0`], table.hline(stroke: 0.5pt),
    [`1`], [`0`], [`1`], [`0`],   [`0`],   [`1`], table.hline(stroke: 0.5pt),
    [`1`], [`1`], [`0`], [`1`],   [`0`],   [`1`], table.hline(stroke: 0.5pt),
    [`1`], [`1`], [`1`], [`1`],   [`1`],   [`1`],
  )
  ```]

  #if option.type == "full" {[

  === Karnaugh Tables

  #sourcecode[```typst
  #import "/00-templates/karnaugh.typ": *
  ```]

  #table(
    columns: (50%,50%),
    stroke: none,
    [#karnaugh(content:((1, 0, 1, 0),
                        (1, 0, 1, 1),))],
  sourcecode[```typst
  #karnaugh(content:((1, 0, 1, 0),
                    (1, 0, 1, 1),))
  ```]
  )

  #table(
    columns: (50%,50%),
    stroke: none,
    [#karnaugh(content:((1, 0, 0, 0),
                        (1, 0, 0, 1),
                        (1, 1, 0, 1),
                        (1, 0, 1, 1),))],
  sourcecode[```typst
  #karnaugh(content:((1, 0, 0, 0),
                    (1, 0, 0, 1),
                    (1, 1, 0, 1),
                    (1, 0, 1, 1),))
  ```]
  )

  #table(
    columns: (60%,43%),
    stroke: none,
    [#karnaugh(content: ((1, 0, 0, 0),
                        (1, 0, 1, 1),
                        (1, 0, 1, 1),
                        (1, 0, 0, 1),

                        (1, 0, 0, 1),
                        (1, 0, 0, 1),
                        (1, 1, 0, 1),
                        (1, 1, 0, 1),))],
  sourcecode[```typst
  #karnaugh(content: ((1, 0, 0, 0),
                      (1, 0, 1, 1),
                      (1, 0, 1, 1),
                      (1, 0, 0, 1),

                      (1, 0, 0, 1),
                      (1, 0, 0, 1),
                      (1, 1, 0, 1),
                      (1, 1, 0, 1),))
  ```]
  )

  #karnaugh(inputs: ($Q_0$,$Q_1$,$Q_2$,$Q_3$,$Q_4$),
              output: [$Q_0^+$],
              content: ((1, 0, 0, 0),
                        (1, 0, 1, 1),
                        (1, 0, 1, 1),
                        (1, 0, 0, 1),

                        (1, 0, 0, 1),
                        (1, 0, 0, 1),
                        (1, 1, 0, 1),
                        (1, 1, 0, 1),)),

  sourcecode[```typst
  #karnaugh(inputs: ($Q_0$,$Q_1$,$Q_2$,$Q_3$,$Q_4$),
            output: [$Q_0^+$],
            content: ((1, 0, 0, 0),
                      (1, 0, 1, 1),
                      (1, 0, 1, 1),
                      (1, 0, 0, 1),

                      (1, 0, 0, 1),
                      (1, 0, 0, 1),
                      (1, 1, 0, 1),
                      (1, 1, 0, 1),))
  ```]
  ]}

  == Icon Boxes

  #sourcecode[```typst
  #import "/00-templates/boxes.typ": *
  ```]

  #infobox()[
    #align(left,
    sourcecode[```typst
  #infobox()["infobox"]
    ```])
  ]
  #ideabox()[
    #align(left,
    sourcecode[```typst
  #ideabox()["ideabox"]
    ```])
  ]
  #warningbox()[
    #align(left,
    sourcecode[```typst
  #warningbox()["warningbox"]
    ```])
  ]
  #importantbox()[
    #align(left,
    sourcecode[```typst
  #importantbox()["importantbox"]
    ```])
  ]
  #firebox()[
    #align(left,
    sourcecode[```typst
  #firebox()["firebox"]
    ```])
  ]
  #rocketbox()[
    #align(left,
    sourcecode[```typst
  #rocketbox()["rocketbox"]
    ```])
  ]
  #todobox()[
    #align(left,
    sourcecode[```typst
  #todobox()["todobox"]
    ```])
  ]
  #iconbox(icon: read("/04-resources/placeholder.svg",encoding:none), linecolor: hei-blue)[
    #align(left,
    sourcecode[```typst
  #iconbox(icon: read("/04-resources/placeholder.svg",encoding:none), linecolor: hei-blue)["iconbox"]
    ```])
  ]
  #iconbox(linecolor: hei-pink)[
    #align(left,
    sourcecode[```typst
  #iconbox(linecolor: hei-pink)["iconbox without icon"]
    ```])
  ]

  == Color Boxes

  #sourcecode[```typst
  #import "/00-templates/boxes.typ": *
  ```]

  #colorbox(title: "Exercise", color: hei-blue)[
    Some text
    #sourcecode[```typst
  #colorbox(title: "Exercise", color: hei-blue)[Some text]
    ```]
  ]

  #colorbox(title: "Attention", color: hei-pink)[
    Some text
    #sourcecode[```typst
  #colorbox(title: "Attention", color: hei-pink)[Some text]
    ```]
  ]

  #slanted-colorbox(title: "Consider", color: hei-green)[
    Some text
    #sourcecode[```typst
  #slanted-colorbox(title: "Consider", color: hei-green)[Some text]
    ```]
  ]

  #slanted-colorbox(title: "Information", color: hei-orange)[
    Some text
    #sourcecode[```typst
  #slanted-colorbox(title: "Information", color: hei-orange)[Some text]
    ```]
  ]

  === Todo Box

  #sourcecode[```typst
  #import "/00-templates/boxes.typ": *
  ```]

  #todo("This is not finished")

  #sourcecode[```typst
  #todo("This is not finished")
  ```]

  === Option Style

  The option style allows to unterlight a text depending on the type or state of the document.
  Within the `/01-settings/metadata.typ` the `option.type` can be set to `draft` or `final` or other types.

  #sourcecode[```typst
  #import "/00-templates/boxes.typ": *
  ```]

  #option-style(type:"draft")["This text has an option style and is shown in the case the type is draft"]
  #sourcecode[```typst
  #option-style(type:"draft")["This text has an option style and is shown in the case the type is draft"]
  ```]

  #option-style(type:"final")["This text has an option style and is shown in the case the type is final"]
  #sourcecode[```typst
  #option-style(type:"final")["This text has an option style and is shown in the case the type is final"]
  ```]

  #option-style(type:"minimal")["This text has an option style and is shown in the case the type is minimal"]
  #sourcecode[```typst
  #option-style(type:"minimal")["This text has an option style and is shown in the case the type is minimal"]
  ```]

  #option-style(type:"full")["This text has an option style and is shown in the case the type is full"]
  #sourcecode[```typst
  #option-style(type:"full")["This text has an option style and is shown in the case the type is full"]
  ```]

  #option-style(type:"student")["This text has an option style and is shown in the case the type is student"]
  #sourcecode[```typst
  #option-style(type:"student")["This text has an option style and is shown in the case the type is student"]
  ```]

  #option-style(type:"solution")["This text has an option style and is shown in the case the type is solution"]
  #sourcecode[```typst
  #option-style(type:"solution")["This text has an option style and is shown in the case the type is solution"]
  ```]

  == Title Box

  #sourcecode[```typst
  #import "/00-templates/sections.typ": *
  ```]

  #titlebox(title: [Title], subtitle: [Subtitle])
  #sourcecode[```typst
  #titlebox(title: [Title], subtitle: [Subtitle])
  ```]
  #titlebox(width: 50%, radius: 0pt, border: 1pt, linecolor: hei-blue, titlesize: larger, subtitlesize: large, title: [Title], subtitle: [Subtitle])
  #sourcecode[```typst
  #titlebox(width: 50%, radius: 0pt, border: 1pt, linecolor: hei-blue, titlesize: larger, subtitlesize: large, title: [Title], subtitle: [Subtitle])
  ```]
  #titlebox(linecolor: hei-green, titlesize: larger, subtitlesize: large, title: [Title])
  #sourcecode[```typst
  #titlebox(linecolor: hei-green, titlesize: larger, subtitlesize: large, title: [Title])
  ```]


  #if option.type == "full" {[

  == Exam Header

  #sourcecode[```typst
  #import "/00-templates/sections.typ": *
  ```]

  #exam-header(nbr-ex: 0, lang: "en")
  ```typst
  #exam-header(nbr-ex: 0, lang: "en")
  ```
  #exam-header(nbr-ex: 1, lang: "en")
  ```typst
  #exam-header(nbr-ex: 1, lang: "en")
  ```
  #exam-header(nbr-ex: 2, pts: 10, lang: "en")
  ```typst
  #exam-header(nbr-ex: 2, pts: 10, lang: "en")
  ```
  #exam-header(nbr-ex: 3, pts: 10, lang: "en")
  ```typst
  #exam-header(nbr-ex: 3, pts: 10, lang: "en")
  ```
  #exam-header(nbr-ex: 4, pts: 10, lang: "en")
  ```typst
  #exam-header(nbr-ex: 4, pts: 10, lang: "en")
  ```
  #exam-header(nbr-ex: 5, pts: 10, lang: "en")
  ```typst
  #exam-header(nbr-ex: 5, pts: 10, lang: "en")
  ```
  #exam-header(nbr-ex: 6, pts: 10, lang: "en")
  ```typst
  #exam-header(nbr-ex: 6, pts: 10, lang: "en")
  ```
  #exam-header(nbr-ex: 7, pts: 10, lang: "en")
  ```typst
  #exam-header(nbr-ex: 7, pts: 10, lang: "en")
  ```
  #exam-header(nbr-ex: 8, pts: 10, lang: "en")
  ```typst
  #exam-header(nbr-ex: 8, pts: 10, lang: "en")
  ```
  #exam-header(nbr-ex: 9, pts: 10, lang: "en")
  ```typst
  #exam-header(nbr-ex: 9, pts: 10, lang: "en")
  ```
  #exam-header(nbr-ex: 10, pts: 10, lang: "en")
  ```typst
  #exam-header(nbr-ex: 10, pts: 10, lang: "en")
  ```

  == Exam Reminder

  #sourcecode[```typst
  #import "/00-templates/sections.typ": *
  ```]

  #exam-reminder-did(lang: "en")
  #sourcecode[```typst
  #exam-reminder-did(lang: "en")
  ```]
  #exam-reminder-did(lang: "de")
  #sourcecode[```typst
  #exam-reminder-did(lang: "de")
  ```]
  #exam-reminder-did(lang: "fr")
  #sourcecode[```typst
  #exam-reminder-did(lang: "fr")
  ```]

  #exam-reminder-car(lang: "en")
  #sourcecode[```typst
  #exam-reminder-car(lang: "en")
  ```]
  #exam-reminder-car(lang: "de")
  #sourcecode[```typst
  #exam-reminder-car(lang: "de")
  ```]
  #exam-reminder-car(lang: "fr")
  #sourcecode[```typst
  #exam-reminder-car(lang: "fr")
  ```]

  == Exercise Message

  #sourcecode[```typst
  #import "/00-templates/sections.typ": *
  ```]

  #exercises-solution-hints(lang: "en")
  #sourcecode[```typst
  #exercises-solution-hints(lang: "en")
  ```]
  #exercises-solution-hints(lang: "de")
  #sourcecode[```typst
  #exercises-solution-hints(lang: "de")
  ```]
  #exercises-solution-hints(lang: "fr")
  #sourcecode[```typst
  #exercises-solution-hints(lang: "fr")
  ```]

  ]}


  == Word/Character Count

  With the plugin wordometer is is possible to count the words and characters of a text.

  #sourcecode[```typst
  #import "@preview/wordometer:0.1.4": word-count
  ```]

  #word-count(total => [
    #[_The following section contains #total.words Words and #total.characters Characters without counting this text._]<no-wc>

    #lorem(50)
  ], exclude: <no-wc>)

  #sourcecode[```typst
  #word-count(total => [
    #[The following section contains #total.words Words and #total.characters Characters without counting this text.]<no-wc>
    #lorem(50)
  ], exclude: <no-wc>)
  ```]

  #warningbox(inset:2pt, outset:0pt)[The character count does not include spaces.]
]
