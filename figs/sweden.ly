\version "2.24.4"
\include "../../figure-preamble.ly"

{
	\relative <<
		\new GrandStaff <<
			\new Staff {
				\key d \major
				\clef treble
				\numericTimeSignature
				\time 4/4
				\tempo 4 = 44

				<d' b g>4 a'8 b8
				<a, d fis>4. d16 e16 |
				<fis, a cis>4. fis'16 a16
				<a, cis e>2 |

				<d b g>8 d'8 [ b8 a8 ]
				<a, d fis>4. d16 e16 |
				<fis, a cis>4. a'16 fis16
				<a, cis e>2 |
			}

			\new Staff {
				\key d \major
				\clef bass
				\numericTimeSignature
				\time 4/4

				e,4 fis g b |
				a4 g4 d2 |
				e4 fis g b |
				a4 g4 d2 |
			}
		>>
	>>
}
