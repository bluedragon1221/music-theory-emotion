\version "2.24.4"
\include "../../figure-preamble.ly"

{
	\relative <<
		\chords {
			\set noChordSymbol = ""
			d2 a2 b:m fis2:m g2 d2 g2 a2:7
		}
		\new Staff {
			\key d \major
			\numericTimeSignature
			\time 4/4

		    d''8 b16 cis16 d8 b16 cis16 d16 d,16 e16
		    fis16 g16 a16 b16 cis16
		    b8 g16 a16 b8 b,16
		    cis16 d16 e16 d16 cis16
		    d16 b16 cis16 d16
		    cis8 e16 d16 cis8 b16
		    a16 b16 a16 g16 a16
			a16 b16 cis16 d16
		    b8 d16 cis16 d8 e16
		    fis16 cis16 d16 e16 fis16
		    g16 a16 b16 cis16
		}
	>>
}
