#import "../00-templates/helpers.typ": *

#let page-title-script(
  version: none,
  doc: (),
  date: (),
  authors: (),
  course: (),
  school: (),
  logos: (
    top: none,
    bottom: none,
  ),
) = {
  align(center,
    if logos.top != none {
      [#image(logos.top, width:5cm)]
    }
  )

  v(1fr)
  if doc.title != none and doc.abbr != none {
    align(center, text(size:huge, [*#doc.title* (*#doc.abbr*)] ))
    v(2em)
  }
  if option.lang == "en" {
    align(center, text(size:huge, [Lecture #course.name (#course.abbr)] ))
  } else if option.lang == "fr" {
    align(center, text(size:huge, [Course #course.name (#course.abbr)] ))
  } else if option.lang == "de" {
    align(center, text(size:huge, [Vorlesung #course.name (#course.abbr)] ))
  }
  v(1fr)

  align(center,
    if logos.bottom != none {
      [#image(logos.bottom, width:7cm)]
    }
  )
  v(1fr)

  set text(normal)
  if option.lang == "en" {
    if school.orientation != none {[*Orientation*: #safe_link(url:school.orientation_url, name:school.orientation) (#safe_link(url:school.orientation_url, name:school.orientation_abbr))\ ]}
    if school.specialisation != none {[*Specialisation*: #safe_link(url:school.specialisation_url, name:school.specialisation) (#safe_link(url:school.specialisation_url, name:school.specialisation_abbr))\ ]}
    if course.name != none {[*Course*: #safe_link(url:course.url, name:course.name) (#safe_link(url:course.url, name:course.abbr))\ ]}
    if authors.first().name != none {[#if authors.len() > 1 {[*Authors*]} else {[*Author*]}: #enumerating_emails(names:authors.map(a => a.name), emails:authors.map(a => a.email))\ ]}
    if date != none {[*Date*: #date\ ]}
    if version != none {[*Version*: #version]}
  } else if option.lang == "fr" {
    if school.orientation != none {[*Orientation*: #safe_link(url:school.orientation_url, name:school.orientation) (#safe_link(url:school.orientation_url, name:school.orientation_abbr))\ ]}
    if school.specialisation != none {[*Spécialisation*: #safe_link(url:school.specialisation_url, name:school.specialisation) (#safe_link(url:school.specialisation_url, name:school.specialisation_abbr))\ ]}
    if course.url != none {[*Cours*: #safe_link(url:course.url, name:course.name) (#safe_link(url:course.url, name:course.abbr))\ ]}
    if authors.first().name != none {[#if authors.len() > 1 {[*Auteurs*]} else {[*Auteur*]}: #enumerating_emails(names:authors.map(a => a.name), emails:authors.map(a => a.email))\ ]}
    if date != none {[*Date*: #date\ ]}
    if version != none {[*Version*: #version]}
  } else if option.lang == "de" {
    if school.orientation!= none {[*Orientierung*: #safe_link(url:school.orientation_url, name:school.orientation) (#safe_link(url:school.orientation_url, name:school.orientation_abbr))\ ]}
    if school.specialisation != none {[*Spezialisierung*: #safe_link(url:school.specialisation_url, name:school.specialisation) (#safe_link(url:school.specialisation_url, name:school.specialisation_abbr))\ ]}
    if course.name != none {[*Kurs*: #safe_link(url:course.url, name:course.name) (#safe_link(url:course.url, name:course.abbr))\ ]}
    if authors.first().name != none {[#if authors.len() > 1 {[*Authoren*]} else {[*Author*]}: #enumerating_emails(names:authors.map(a => a.name), emails:authors.map(a => a.email))\ ]}
    if date != none {[*Datum*: #date\ ]}
    if version != none {[*Version*: #version]}
  }


  v(1fr)




}