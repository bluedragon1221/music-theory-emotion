\version "2.24.0"
\include "../../figure-preamble.ly"

{
	\new GrandStaff <<
		\new Staff \relative c''' {
			\key c \minor
			\numericTimeSignature
			\time 4/4
			\clef treble

			\partial 2 {
				g16 [ ees' ] \tuplet 6/4 { ees64 [ d des c b bes ] } \tuplet 7/8 { a128 [ aes g fis f e ees ] }
				d [ des c b bes a aes g fis f e ees d des c b ] aes'16.\fermata b,32
			} |
		}
		\new Staff \relative c' {
			\key c \minor
			\numericTimeSignature
			\time 4/4
			\clef bass

			\partial 2 {
			    <g c ees>8 r <f d g,>8*1/2 s16 r8\fermata
			} |
		}
	>>
}
