#import "./versatile-apa/lib.typ": *

#show: versatile-apa.with(
  title: [How do musicians across diverse genres utilize specific musical techniques to evoke emotional response in listeners?],
  authors: (
    (
      name: [Collin Williams],
      affiliations: ("CHS"),
    ),
  ),
  affiliations: (
    (
      id: "CHS",
      name: [Champion High School],
    ),
  ),
  course: [AP Seminar],
  instructor: [Patrick Behrens],
  due-date: datetime(year: 2025, month: 3, day: 23).display("[month repr:long] [day], [year]")
)

#include "./essay.typ"

#bibliography("citations.bib", full: true)
