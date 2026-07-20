//
// Description: Some recurrent section elements mainly for exams
// Author     : Silvan Zahno
//
#import "/01-settings/metadata.typ": *

#let part(
  title: [],
  number: 1,
  size: huge,
) = {
  pagebreak()
  v(1fr)
  align(center, smallcaps(text(size, [Part #number])))
  v(2em)
  align(center, smallcaps(text(size, title)))
  v(1fr)
  pagebreak()
}

#let exam-reminder-did(
  lang: "en" // "de" "fr",
) = {
  if lang == "en" {
    infobox[
      *Exam Reminder:* \
      You can only use the following items:
      - a laptop without internet connection
      - a pocketcalculator
      - all paper documents you want
      It is forbidden to use generative AI.
      \
      *Good Luck!*
    ]
  } else if lang == "fr" {
    infobox[
      *Rappel d'examen :* \
      Vous ne pouvez utiliser que les éléments suivants :
      - un ordinateur portable sans connexion internet
      - une calculatrice de poche
      - tous les documents papier que vous souhaitez
      Il est interdit d'utiliser l'IA générative.
      \
      *Bonne chance!*
    ]
  } else if lang == "de" {
    infobox[
      *Prüfungserinnerung:* \
      Sie können nur die folgenden Gegenstände verwenden:
      - ein Laptop ohne Internetanschluss
      - einen Taschenrechner
      - alle Papierdokumente
      Es ist verboten, generative KI zu verwenden.
      \
      *Viel Glück!*
    ]
  }
}

#let exam-reminder-car(
  lang: "en" // "de" "fr",
) = {
  if lang == "en" {
    infobox[
      *Exam Reminder:*
      \ \
      You can only use the following items:
      - the two-page summary you created.
      - a pocketcalculator
      In addition, properly comment all high-level and assembler code to explain its purpose and how it fits into the program structure.
      \ \
      *Good Luck!*
    ]
  } else if lang == "fr" {
    infobox[
      *Rappel d'examen :*
      \ \
      Vous ne pouvez utiliser que les éléments suivants :
      - le résumé de deux pages que vous avez créé.
      - une calculatrice de poche
      Commenter également tout le code de haut niveau et le code assembleur de manière appropriée afin d'expliquer son but et son intégration dans la structure du programme.
      \ \
      *Bonne chance!*
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

#let exam-reminder-syd(
  lang: "en" // "de" "fr",
) = {
  if lang == "en" {
    infobox[
      *Exam Reminder:*
      \
      You can only use the following items:
      - your personal notes
      - the couse slides
      //- A one-page summary (front and back) prepared by you.
      It is forbidden to use generative AI.
      \
      *Good Luck!*
    ]
  } else if lang == "fr" {
    infobox[
      *Rappel d'examen :*
      \
      Vous ne pouvez utiliser que les éléments suivants :
      - vos notes personnelles
      - les diapositives du cours
      Il est interdit d'utiliser l'IA générative.
      \
      *Bonne chance!*
    ]
  } else if lang == "de" {
    infobox[
      *Prüfungserinnerung:*
      \
      Sie können nur die folgenden Elemente verwenden:
      - Ihre persönlichen Notizen
      - die Vorlesungsfolien
      Es ist verboten, generative KI zu verwenden.
      \
      *Viel Glück!*
    ]
  }
}

#let exercises-solution-hints(
  lang: "en" // "de" "fr",
) = {
  if lang == "en" {
    infobox[
      *Solution vs. Hints:*
      \
      While not every response provided herein constitutes a comprehensive solution, some serve as helpful hints intended to guide you toward discovering the solution independently. In certain instances, only a portion of the solution is presented.
    ]
  } else if lang == "fr" {
    infobox[
      *Solution vs. Hints:*
      \
      Toutes les réponses fournies ici ne sont pas des solutions complètes. Certaines ne sont que des indices pour vous aider à trouver la solution vous-même. Dans d'autres cas, seule une partie de la solution est fournie.
    ]
  } else if lang == "de" {
    infobox[
      *Lösung vs. Hinweise:*
      \
      Nicht alle hier gegebenen Antworten sind vollständige Lösungen. Einige dienen lediglich als Hinweise, um Ihnen bei der eigenständigen Lösungsfindung zu helfen. In anderen Fällen wird nur ein Teil der Lösung präsentiert.
    ]
  }
}
