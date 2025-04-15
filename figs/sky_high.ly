\version "2.24.4"
\include "../../figure-preamble.ly"

{
	\new GrandStaff \relative <<
		\chords {
			fis1:m
			d1
			a1
			e1
		}
		\new Staff {
			\key fis \minor
			\numericTimeSignature
			\time 4/4

			cis''8 a8 fis8
			cis'8 a8 fis8
			cis'8 a8

			d8 a8 fis8
			d'8 a8 fis8
			d'8 a8

			cis8 a8 e8
			cis'8 a8 e8
			cis'8 a8

			b8 gis8 e8
			b'8 gis8 e8
			b'8 gis8
		}
		\new Staff {
			\key fis \minor
			\numericTimeSignature
			\time 4/4

			\clef bass
			a,,1
			fis1
			cis'1
			gis1
		}
	>>
}
