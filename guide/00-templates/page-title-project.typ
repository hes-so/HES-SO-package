//
// Description: Title page for the project template
// Author     : Silvan Zahno
//
#import "../00-templates/helpers.typ": *

#let page-title-project(
  version: none,
  option: none,
  date: none,
  project: (),
  partners: (),
) = {
  align(center,
    if project.logo != none {
      [#image(project.logo, width:5cm)]
    }
  )

  v(1fr)
  if project.title != none and project.abbr != none {
    align(center, text(size:huge, [Project:  #project.title (#project.abbr)] ))
    v(1em)
  }
  if project.subtitle != none {
    align(center, text(size:larger, [#project.subtitle] ))
    v(1em)
  }

  v(1fr)

  grid(
    gutter: 1em,
    columns: (1fr,) * calc.min(2, partners.len()),
    ..partners.map(partner => align(start)[
      #align(center, [
        #image(partner.logo, width:5cm)
        *#partner.name* \
        #safe_link(name:partner.email, url:partner.email) \
        #safe_link(name:partner.company, url:partner.company_url) \
        #partner.department \
        #partner.city, #partner.country
      ])
    ]),
  )
  v(1fr)

  set text(normal)
  if date != none {[*Date*: #date \ ]}
  if version != none {[*Version*: #version \ ]}
  if type != none {[*Type*: #option.type]}
}