#import "../deps/versatile-apa/lib.typ": *

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
  due-date: datetime(year: 2025, month: 4, day: 10).display("[month repr:long] [day], [year]"),
  keywords: ("Music", "Music Theory", "Electronic Music", "Classical Music", "Pop Music"),
  // description: [Throughout all genres of music, artists utilize specific techniques to create these emotional responses],
)

#include "./lit.typ"

#bibliography("../citations.bib", full: true)
