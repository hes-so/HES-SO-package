#import "/00-templates/helpers.typ": *
#pagebreak()
= Elements <sec:elem>
#add_chapter(
  after: <sec:elem>,
  before: <sec:ref>,
)[
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
  #import "/00-templates/items.typ": *
  ```


  #table(
    columns: (40%,60%),
    stroke: none,
    [#item-list(content: "item-list")
    #item-checkbadge(content: "item-checkbadge")
    #item-circle(content: "item-circle")
    #item-square(content: "item-square")
    #item-checkcircle(content: "item-checkcircle")
    #item-checksquare(content: "item-checksquare")
    #item-check(content: "item-check")
    #item-file(content: "item-file")
    #item-folder(content: "item-folder")
    #item-xcircle(content: "item-xcircle")
    #item-xsquare(content: "item-xsquare")
    #item-x(content: "item-x")],
    ```typst
      #item-list(content: "item-list")
      #item-checkbadge(content: "item-checkbadge")
      #item-circle(content: "item-circle")
      #item-square(content: "item-square")
      #item-checkcircle(content: "item-checkcircle")
      #item-checksquare(content: "item-checksquare")
      #item-check(content: "item-check")
      #item-file(content: "item-file")
      #item-folder(content: "item-folder")
      #item-xcircle(content: "item-xcircle")
      #item-xsquare(content: "item-xsquare")
      #item-x(content: "item-x")
    ```
  )

  == Minitoc

  The `minitoc` is specific for this template and allows to show a TOC between two labels. The `minitoc` is also used within the `#add-chapter` function if `after` and `before ` labels are defined.

  #minitoc(after: <sec:elem>, before: <sec:ref>)

  ```typst
  #minitoc(after: <sec:elem>, before: <sec:ref>)
  ```

  ```typst
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
  ```

  == Images

  === Alignment
  left
  #table(
    columns: (50%,50%),
    stroke: none,
    image("/04-resources/icon.svg", width: 2cm), ```typst
                                            #image("/04-resources/icon.svg",
                                              width: 2cm)
                                            ```,
  )
  #align(center, "center")

  #table(
    columns: (50%,50%),
    stroke: none,
    align(center, image("/04-resources/icon.svg",width: 2cm)), ```typst
                                                          #align(center,
                                                            image("/04-resources/icon.svg",
                                                              width: 2cm)
                                                          )
                                                          ```,
  )

  #align(right, "right")
  #table(
    columns: (50%,50%),
    stroke: none,
    align(right, image("/04-resources/icon.svg",width: 2cm)), ```typst
                                                          #align(right,
                                                            image("/04-resources/icon.svg",
                                                              width: 2cm)
                                                          )
                                                          ```,
  )


  === Caption
  #table(
    columns: (50%,50%),
    stroke: none,
    [#figure(
      image("/04-resources/icon.svg",width: 2cm),
      caption: [One image one caption],
    ) <fig:icon>],
  ```typst
  #figure(
    image("/04-resources/icon.svg",
      width: 2cm),
    caption: [One image one caption]
  ) <fig:icon>
  ```
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

  ```typst
  #figure(
    table(
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
    table(
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
    table(
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
    table(
      columns: 2,
      stroke: none,
      align: center + horizon,
      figure(image(icon, width: 2cm), caption: [Caption left image]), figure(image(icon, width: 2cm), caption: [Caption right image]),
  ))

  ```typst
  #align(center,
    table(
      columns: 2,
      stroke: none,
      align: center + horizon,
      figure(image(icon, width: 2cm), caption: [Caption left image]), figure(image(icon, width: 2cm), caption: [Caption right image]),
  ))
  ```

  Four images four caption

  #align(center,
    table(
      columns: 2,
      stroke: none,
      align: center + horizon,
      figure(image(icon, width: 2cm), caption: [Caption topleft image]), figure(image(icon, width: 2cm), caption: [Caption topright image]),
      figure(image(icon, width: 2cm), caption: [Caption bottomleft image]), figure(image(icon, width: 2cm), caption: [Caption bottomright image]),
  ))

  ```typst
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
  ```

  == Tables

  For new table use the integrated `#table` command for legacy the `tablex` plugin is also imported.

  ```typst
  #import "@preview/tablex:0.0.9" : *
  // or
  #import "/00-templates/helpers.typ": *

  ```



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
    ```typst
    table(
      columns: 3,
      align: center + horizon,
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    )
    ```,
    ```typst
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
    ```,
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
    ```typst
      table(
        columns: 3,
        align: center + horizon,
        table.header([], [*Col1*]  , [*Col2*],),
        [*Row1*], table.cell(rowspan: 2)[cell-0], "cell-1-0",
        [*Row2*],                                 "cell-1-1",
      )
    ```,
    ```typst
      table(
        columns: 3,
        align: center + horizon,
        table.header([], [*Col1*]  , [*Col2*],),
        [*Row1*], table.cell(colspan: 2)[cell-0],
        [*Row2*], "cell-0-1", "cell-1-1",
      )
    ```,
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
    ```typst
      table(
        columns: 3,
        align: center + horizon,
        table.header([], [*Col1*]  , [*Col2*],),
        [*Row1*], "cell-0-0", "cell-1-0",
        [*Row2*], "cell-0-1", "cell-1-1",
      )
    ```,
    ```typst
      table(
        columns: 3,
        align: center + horizon,
        table.header([], [*Col1*]  , [*Col2*],),
        [*Row1*], "cell-0-0", "cell-1-0",
        [*Row2*], "cell-0-1", "cell-1-1",
      )
    ```,
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
    ```typst
      table(
        columns: 3,
        align: center + horizon,
        table.vline(x:0, stroke: none), table.vline(x:1 , stroke: blue), table.vline(x:2),
        table.header([]      , [*Col1*]  , [*Col2*], table.hline(stroke: red)),
        [*Row1*], "cell-0-0", "cell-1-0", table.hline(),
        [*Row2*], "cell-0-1", "cell-1-1",
      )
    ```,
    ```typst
    table(
      columns: 3,
      align: center + horizon,
      stroke: (x:none),
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    ```,
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
    ```typst
    table(
      columns: 3,
      align: center + horizon,
      stroke: (y:none),
      table.header([], [*Col1*]  , [*Col2*],),
      [*Row1*], "cell-0-0", "cell-1-0",
      [*Row2*], "cell-0-1", "cell-1-1",
    ),
    ```,
    ```typst
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
    ```
  )


  ```typst
  #table(
    columns: 3,
    align: center + horizon,
    table.vline(x:0, stroke: none), table.vline(x:1 , stroke: blue), table.vline(x:2),
    table.header([]      , [*Col1*]  , [*Col2*], table.hline(stroke: red)),
    [*Row1*], "cell-0-0", "cell-1-0", table.hline(),
    [*Row2*], "cell-0-1", "cell-1-1",
  )
  ```

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

  ```typst
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
  ```

  #if option.type == "full" {[

  === Karnaugh Tables

  ```typst
  #import "/00-templates/karnaugh.typ": *
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
    [#karnaugh(content: ((1, 0, 0, 0),
                        (1, 0, 1, 1),
                        (1, 0, 1, 1),
                        (1, 0, 0, 1),

                        (1, 0, 0, 1),
                        (1, 0, 0, 1),
                        (1, 1, 0, 1),
                        (1, 1, 0, 1),))],
  ```typst
  #karnaugh(content: ((1, 0, 0, 0),
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
              content: ((1, 0, 0, 0),
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
            content: ((1, 0, 0, 0),
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
  #import "/00-templates/boxes.typ": *
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
  #iconbox(icon: "/04-resources/placeholder.svg", linecolor: hei-blue)[
    #align(left,
    ```typst
  #iconbox(icon: "/04-resources/placeholder.svg", linecolor: hei-blue)["iconbox"]
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
  #import "/00-templates/boxes.typ": *
  ```

  #colorbox(title: "Exercise", color: hei-blue)[
    Some text
    ```typst
  #colorbox(title: "Exercise", color: hei-blue)[Some text]
    ```
  ]

  #colorbox(title: "Attention", color: hei-pink)[
    Some text
    ```typst
  #colorbox(title: "Attention", color: hei-pink)[Some text]
    ```
  ]

  #slantedColorbox(title: "Consider", color: hei-green)[
    Some text
    ```typst
  #slantedColorbox(title: "Consider", color: hei-green)[Some text]
    ```
  ]

  #slantedColorbox(title: "Information", color: hei-orange)[
    Some text
    ```typst
  #slantedColorbox(title: "Information", color: hei-orange)[Some text]
    ```
  ]

  === Todo Box

  ```typst
  #import "/00-templates/boxes.typ": *
  ```

  #todo("This is not finished")

  ```typst
  #todo("This is not finished")
  ```

  === Option Style

  The option style allows to unterlight a text depending on the type or state of the document.
  Within the `/01-settings/metadata.typ` the `option.type` can be set to `draft` or `final` or other types.

  ```typst
  #import "/00-templates/boxes.typ": *
  ```

  #option_style(type:"draft")["This text has an option style and is shown in the case the type is draft"]
  ```typst
  #option_style(type:"draft")["This text has an option style and is shown in the case the type is draft"]
  ```

  #option_style(type:"final")["This text has an option style and is shown in the case the type is final"]
  ```typst
  #option_style(type:"final")["This text has an option style and is shown in the case the type is final"]
  ```

  #option_style(type:"minimal")["This text has an option style and is shown in the case the type is minimal"]
  ```typst
  #option_style(type:"minimal")["This text has an option style and is shown in the case the type is minimal"]
  ```

  #option_style(type:"full")["This text has an option style and is shown in the case the type is full"]
  ```typst
  #option_style(type:"full")["This text has an option style and is shown in the case the type is full"]
  ```

  #option_style(type:"student")["This text has an option style and is shown in the case the type is student"]
  ```typst
  #option_style(type:"student")["This text has an option style and is shown in the case the type is student"]
  ```

  #option_style(type:"solution")["This text has an option style and is shown in the case the type is solution"]
  ```typst
  #option_style(type:"solution")["This text has an option style and is shown in the case the type is solution"]
  ```

  == Title Box

  ```typst
  #import "/00-templates/sections.typ": *
  ```

  #titlebox(title: [Title], subtitle: [Subtitle])
  ```typst
  #titlebox(title: [Title], subtitle: [Subtitle])
  ```
  #titlebox(width: 50%, radius: 0pt, border: 1pt, linecolor: hei-blue, titlesize: larger, subtitlesize: large, title: [Title], subtitle: [Subtitle])
  ```typst
  #titlebox(width: 50%, radius: 0pt, border: 1pt, linecolor: hei-blue, titlesize: larger, subtitlesize: large, title: [Title], subtitle: [Subtitle])
  ```
  #titlebox(linecolor: hei-green, titlesize: larger, subtitlesize: large, title: [Title])
  ```typst
  #titlebox(linecolor: hei-green, titlesize: larger, subtitlesize: large, title: [Title])
  ```


  #if option.type == "full" {[

  == Exam Header

  ```typst
  #import "/00-templates/sections.typ": *
  ```

  #exam_header(nbrEx: 0, lang: "en")
  ```typst
  #exam_header(nbrEx: 0, lang: "en")
  ```
  #exam_header(nbrEx: 1, lang: "en")
  ```typst
  #exam_header(nbrEx: 1, lang: "en")
  ```
  #exam_header(nbrEx: 2, pts: 10, lang: "en")
  ```typst
  #exam_header(nbrEx: 2, pts: 10, lang: "en")
  ```
  #exam_header(nbrEx: 3, pts: 10, lang: "en")
  ```typst
  #exam_header(nbrEx: 3, pts: 10, lang: "en")
  ```
  #exam_header(nbrEx: 4, pts: 10, lang: "en")
  ```typst
  #exam_header(nbrEx: 4, pts: 10, lang: "en")
  ```
  #exam_header(nbrEx: 5, pts: 10, lang: "en")
  ```typst
  #exam_header(nbrEx: 5, pts: 10, lang: "en")
  ```
  #exam_header(nbrEx: 6, pts: 10, lang: "en")
  ```typst
  #exam_header(nbrEx: 6, pts: 10, lang: "en")
  ```
  #exam_header(nbrEx: 7, pts: 10, lang: "en")
  ```typst
  #exam_header(nbrEx: 7, pts: 10, lang: "en")
  ```
  #exam_header(nbrEx: 8, pts: 10, lang: "en")
  ```typst
  #exam_header(nbrEx: 8, pts: 10, lang: "en")
  ```
  #exam_header(nbrEx: 9, pts: 10, lang: "en")
  ```typst
  #exam_header(nbrEx: 9, pts: 10, lang: "en")
  ```
  #exam_header(nbrEx: 10, pts: 10, lang: "en")
  ```typst
  #exam_header(nbrEx: 10, pts: 10, lang: "en")
  ```

  == Exam Reminder

  ```typst
  #import "/00-templates/sections.typ": *
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
  #import "/00-templates/sections.typ": *
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


  == Word/Character Count

  With the plugin wordometer is is possible to count the words and characters of a text.

  ```typst
  #import "@preview/wordometer:0.1.4": word-count
  ```

  #word-count(total => [
    #[_The following section contains #total.words Words and #total.characters Characters without counting this text._]<no-wc>

    #lorem(50)
  ], exclude: <no-wc>)

  ```typst
  #word-count(total => [
    #[The following section contains #total.words Words and #total.characters Characters without counting this text.]<no-wc>
    #lorem(50)
  ], exclude: <no-wc>)
  ```

  #warningbox(inset:2pt, outset:0pt)[The character count does not include spaces.]
]
