\version "2.24.4"
\include "../../figure-preamble.ly"

{
	\numericTimeSignature
	\time 4/4

	\relative <<
		\chords {
			c1 a1:m
			f2 d2:m
			g2:sus4 g2
			a2:m g2
			c2 f2
			c2 g2
			c1
		}
		\new Voice = "melody" {
			\key c \major
		
			<e' c'>2 g2
			<<
				{ \voiceOne b2 a4. a8 }
				\new Voice { \voiceTwo e1 }
			>>
			<a c f>2 a4. f8

			<f' c>2 <b, g>
			<a c>2 <b d>4. g8
			<<
				{ \voiceOne \tuplet 3/2 { e'4 d4 c4 } f4 g8 f8 e4 c4 d4. c8 }
				\new Voice { \voiceTwo g2 a2 g2 g2 }
			>>
			c1
		}
	>>
}
