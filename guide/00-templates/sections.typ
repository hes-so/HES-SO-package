// some recurrent section elements
#import "constants.typ": *
#import "boxes.typ": *
#import "tablex.typ": *

#let titlebox(
  width: 100%,
  radius: 4pt,
  border: 1pt,
  inset: 20pt,
  outset: -10pt,
  linecolor: box-border,
  titlesize: huge,
  subtitlesize: larger,
  title: [],
  subtitle: [],
) = {
    if title != [] {
    align(center,
      rect(
        stroke: (left:linecolor+border, top:linecolor+border, rest:linecolor+(border+1pt)),
        radius: radius,
        outset: (left:outset, right:outset),
        inset: (left:inset*2, top:inset, right:inset*2, bottom:inset),
        width: width)[
          #align(center,
            [
              #if subtitle != [] {
                [#text(titlesize, title) \ \ #text(subtitlesize, subtitle)]
              } else {
                text(titlesize, title)
              }
            ]
          )
        ]
      )
    }
}

#let exam_header(
  nbrEx: 5,
  pts: 10,
  lang: "en" // "de" "fr"
) = {
  if nbrEx == 0 {
    tablex(
      columns: (2cm, 90%),
      align: center + top,
      stroke: none,
      (), (),
      if lang == "en" or lang == "de" {[#text(large, "Name:")]} else {[#text(large, "Nom:")]
      },
      [#line(start: (0cm, 0.7cm), length:(100%), stroke:(dash:"loosely-dashed"))],
    )
  } else if nbrEx == 1 {
    tablex(
      columns: (2cm, 90%-1.3cm, 1.3cm),
      align: center + top,
      stroke: none,
      [], [], if lang == "en" {[#v(-0.4cm)#text(small, "Grade")]} else {[#text(small, "Note")]},
      if lang == "en" or lang == "de" {[#text(large, "Name:")]} else {[#text(large, "Nom:")]
      },
      [#line(start: (0cm, 0.7cm), length:(100%), stroke:(dash:"loosely-dashed"))],
      [#v(-0.3cm)#rect(height:1cm, width:1.2cm, stroke:2pt)],
    )
  } else if nbrEx == 2 {
    tablex(
      columns: (2cm, 90%-2.3cm, 1cm, 1.3cm),
      align: center + top,
      stroke: none,
      [], [], [#v(-0.4cm)#text(small, "1")], if lang == "en" {[#v(-0.4cm)#text(small, "Grade")]} else {[#text(small, "Note")]},
      if lang == "en" or lang == "de" {[#text(large, "Name:")]} else {[#text(large, "Nom:")]
      },
      [#line(start: (0cm, 0.7cm), length:(100%), stroke:(dash:"loosely-dashed"))],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#rect(height:1cm, width:1.2cm, stroke:2pt)],
      [], [], [#v(-0.2cm)#text(small, [(#pts)])], [],
    )
  } else if nbrEx == 3 {
    tablex(
      columns: (2cm, 90%-3.3cm, 1cm, 1cm, 1.3cm),
      align: center + top,
      stroke: none,
      [], [], [#v(-0.4cm)#text(small, "1")], [#v(-0.4cm)#text(small, "2")], if lang == "en" {[#v(-0.4cm)#text(small, "Grade")]} else {[#text(small, "Note")]},
      if lang == "en" or lang == "de" {[#text(large, "Name:")]} else {[#text(large, "Nom:")]
      },
      [#line(start: (0cm, 0.7cm), length:(100%), stroke:(dash:"loosely-dashed"))],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#rect(height:1cm, width:1.2cm, stroke:2pt)],
      [], [], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [],
    )
  } else if nbrEx == 4 {
    tablex(
      columns: (2cm, 90%-4.3cm, 1cm, 1cm, 1cm, 1.3cm),
      align: center + top,
      stroke: none,
      [], [], [#v(-0.4cm)#text(small, "1")], [#v(-0.4cm)#text(small, "2")], [#v(-0.4cm)#text(small, "3")], if lang == "en" {[#v(-0.4cm)#text(small, "Grade")]} else {[#text(small, "Note")]},
      if lang == "en" or lang == "de" {[#text(large, "Name:")]} else {[#text(large, "Nom:")]
      },
      [#line(start: (0cm, 0.7cm), length:(100%), stroke:(dash:"loosely-dashed"))],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#rect(height:1cm, width:1.2cm, stroke:2pt)],
      [], [], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [],
    )
  } else if nbrEx == 5 {
    tablex(
      columns: (2cm, 90%-5.3cm, 1cm, 1cm, 1cm, 1cm, 1.3cm),
      align: center + top,
      stroke: none,
      [], [], [#v(-0.4cm)#text(small, "1")], [#v(-0.4cm)#text(small, "2")], [#v(-0.4cm)#text(small, "3")], [#v(-0.4cm)#text(small, "4")], if lang == "en" {[#v(-0.4cm)#text(small, "Grade")]} else {[#text(small, "Note")]},
      if lang == "en" or lang == "de" {[#text(large, "Name:")]} else {[#text(large, "Nom:")]
      },
      [#line(start: (0cm, 0.7cm), length:(100%), stroke:(dash:"loosely-dashed"))],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#rect(height:1cm, width:1.2cm, stroke:2pt)],
      [], [], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [],
    )
  } else if nbrEx == 6 {
    tablex(
      columns: (2cm, 90%-6.3cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1.3cm),
      align: center + top,
      stroke: none,
      [], [], [#v(-0.4cm)#text(small, "1")], [#v(-0.4cm)#text(small, "2")], [#v(-0.4cm)#text(small, "3")], [#v(-0.4cm)#text(small, "4")], [#v(-0.4cm)#text(small, "5")], if lang == "en" {[#v(-0.4cm)#text(small, "Grade")]} else {[#text(small, "Note")]},
      if lang == "en" or lang == "de" {[#text(large, "Name:")]} else {[#text(large, "Nom:")]
      },
      [#line(start: (0cm, 0.7cm), length:(100%), stroke:(dash:"loosely-dashed"))],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#rect(height:1cm, width:1.2cm, stroke:2pt)],
      [], [], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [],
    )
  } else if nbrEx == 7 {
    tablex(
      columns: (2cm, 90%-7.3cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1.3cm),
      align: center + top,
      stroke: none,
      [], [], [#v(-0.4cm)#text(small, "1")], [#v(-0.4cm)#text(small, "2")], [#v(-0.4cm)#text(small, "3")], [#v(-0.4cm)#text(small, "4")], [#v(-0.4cm)#text(small, "5")], [#v(-0.4cm)#text(small, "6")], if lang == "en" {[#v(-0.4cm)#text(small, "Grade")]} else {[#text(small, "Note")]},
      if lang == "en" or lang == "de" {[#text(large, "Name:")]} else {[#text(large, "Nom:")]
      },
      [#line(start: (0cm, 0.7cm), length:(100%), stroke:(dash:"loosely-dashed"))],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#rect(height:1cm, width:1.2cm, stroke:2pt)],
      [], [], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [],
    )
  } else if nbrEx == 8 {
    tablex(
      columns: (2cm, 90%-8.3cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1.3cm),
      align: center + top,
      stroke: none,
      [], [], [#v(-0.4cm)#text(small, "1")], [#v(-0.4cm)#text(small, "2")], [#v(-0.4cm)#text(small, "3")], [#v(-0.4cm)#text(small, "4")], [#v(-0.4cm)#text(small, "5")], [#v(-0.4cm)#text(small, "6")], [#v(-0.4cm)#text(small, "7")], if lang == "en" {[#v(-0.4cm)#text(small, "Grade")]} else {[#text(small, "Note")]},
      if lang == "en" or lang == "de" {[#text(large, "Name:")]} else {[#text(large, "Nom:")]
      },
      [#line(start: (0cm, 0.7cm), length:(100%), stroke:(dash:"loosely-dashed"))],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#rect(height:1cm, width:1.2cm, stroke:2pt)],
      [], [], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [],
    )
  } else if nbrEx == 9 {
    tablex(
      columns: (2cm, 90%-9.3cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1.3cm),
      align: center + top,
      stroke: none,
      [], [], [#v(-0.4cm)#text(small, "1")], [#v(-0.4cm)#text(small, "2")], [#v(-0.4cm)#text(small, "3")], [#v(-0.4cm)#text(small, "4")], [#v(-0.4cm)#text(small, "5")], [#v(-0.4cm)#text(small, "6")], [#v(-0.4cm)#text(small, "7")], [#v(-0.4cm)#text(small, "8")], if lang == "en" {[#v(-0.4cm)#text(small, "Grade")]} else {[#text(small, "Note")]},
      if lang == "en" or lang == "de" {[#text(large, "Name:")]} else {[#text(large, "Nom:")]
      },
      [#line(start: (0cm, 0.7cm), length:(100%), stroke:(dash:"loosely-dashed"))],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#rect(height:1cm, width:1.2cm, stroke:2pt)],
      [], [], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [],
    )
  } else if nbrEx == 10 {
    tablex(
      columns: (2cm, 90%-10.3cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1.3cm),
      align: center + top,
      stroke: none,
      [], [], [#v(-0.4cm)#text(small, "1")], [#v(-0.4cm)#text(small, "2")], [#v(-0.4cm)#text(small, "3")], [#v(-0.4cm)#text(small, "4")], [#v(-0.4cm)#text(small, "5")], [#v(-0.4cm)#text(small, "6")], [#v(-0.4cm)#text(small, "7")], [#v(-0.4cm)#text(small, "8")], [#v(-0.4cm)#text(small, "9")], if lang == "en" {[#v(-0.4cm)#text(small, "Grade")]} else {[#text(small, "Note")]},
      if lang == "en" or lang == "de" {[#text(large, "Name:")]} else {[#text(large, "Nom:")]
      },
      [#line(start: (0cm, 0.7cm), length:(100%), stroke:(dash:"loosely-dashed"))],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#square(size:1cm, stroke:1pt)],
      [#v(-0.3cm)#rect(height:1cm, width:1.2cm, stroke:2pt)],
      [], [], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [#v(-0.2cm)#text(small, [(#pts)])], [],
    )
  }
  /*if lang == "en" {
    [#text(large, "Name:")]
  } else if lang == "fr" {
    [#text(large, "Nom:")]
  } else if lang == "de" {
    [#text(large, "Name:")]
  }
  line(start: (2cm, 0cm), length:(80%-nbrEx*5%), stroke:(dash:"loosely-dashed"))
  if nbrEx != 0 {
    let i = 0
    while i <= nbrEx {
      if i == nbrEx {
        square(size:1.3cm, stroke:2pt)
      } else {
        square(size:1cm, stroke:1pt)
      }
      i = i + 1
    }
  }*/
}

#let exam_reminder_isc(
  lang: "en" // "de" "fr",
) = {
  if lang == "en" {
    infobox[
      *Exam Reminder:*
      \ \
      You can only use the following items:
      - the two-page summary you created.
      - a pocketcalculator
      Kommentieren Sie ausserdem den gesamten High-Level- und Assembler-Code ordnungsgemäss aus, um seinen Zweck und seine Einbindung in die Programmstruktur zu erklären.
      \ \
      *Viel Glück!*
    ]
  } else if lang == "fr" {
    infobox[
      *Rappel d'examen :*
      \ \
      Vous ne pouvez utiliser que les éléments suivants :
      - le résumé de deux pages que vous avez créé.
      - une calculatrice de poche
      In addition, properly comment all high-level and assembler code to explain its purpose and how it fits into the program structure.
      \ \
      *Good Luck!*
    ]
  } else if lang == "de" {
    infobox[
      *Prüfungserinnerung:*
      \ \
      Sie können nur die folgenden Elemente verwenden:
      - die zweiseitige Zusammenfassung, die Sie erstellt haben.
      - einen Taschenrechner
      Kommentieren Sie ausserdem den gesamten High-Level- und Assembler-Code ordnungsgemäss aus, um seinen Zweck und seine Einbindung in die Programmstruktur zu erklären.
      \ \
      *Viel Glück!*
    ]
  }
}
