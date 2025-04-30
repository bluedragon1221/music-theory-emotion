\version "2.24.4"
\include "../figure-preamble.ly"

\header {
	composer = "arr. David Emmel, MuseScore"
}

{
	\new GrandStaff <<
		\new Staff \relative c'' {
			\key c \major
			\numericTimeSignature
			\time 4/4
			\clef treble

			\autoLineBreaksOff

			\repeat unfold 2 {
				c4 a'16 g8 c,16 ~ c2
			    c4 a'16 g8 d16 ~ d4 d8 c8
			    c4 a'16 g8 c,16 ~ c4. e8

				\repeat unfold 4 {
					\tuplet 3/2 { e8 c8 d8 }
				}
				\break
			}
		}
		\new Staff \relative c {
			\key c \major
			\numericTimeSignature
			\time 4/4
			\clef bass

		    <f c' e>1
		    <e c' g'>2 <g b d g>2
		    <e b' e>2 <a c e g>2
		    <d, a' c>2. <e c' e>4
		    <f a c e>1
		    <e c' g'>2 <g b d g>4 <f d' g>4
		    <e b' g'>2 <a c e g>2
		    <d, a' f'>4 <d' f a>4 <d,, a' f'>4
		    <e c' g'>4
		}
	>>
}
