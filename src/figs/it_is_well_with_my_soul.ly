\version "2.24.4"
\include "../../figure-preamble.ly"

{
	\numericTimeSignature
	\time 4/4

	\relative <<
		\chords {
			c1 c1:aug f1 c1 a1:min7 d1:m g1
 		}
		\new Voice = "melody" {
	 		\chordmode { c1 c1:aug f1/c }
			<<
				{ \voiceOne <e' g>2 }
				\new Voice { \voiceTwo c2 b2 }
			>>
		    \oneVoice
			\chordmode { a,1:min7 d1:m/a g1/b }
	  	}
	>>
}
