#(ly:set-option (quote no-point-and-click))
#(ly:set-option 'use-paper-size-for-page #f)

#(ly:set-option 'eps-box-padding 3.000000)
#(set-global-staff-size 20)
\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 160\mm - 2.0 * 10.16\mm
  oddFooterMarkup = ##f
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

