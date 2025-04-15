\version "2.24.4"
\include "../../figure-preamble.ly"

{
	\relative <<
		\new Staff {
			\numericTimeSignature
			\time 4/4
		
			\partial 4 \tuplet 3/2 { g8 g8 g8 } |
			c2 g'2 |
			\tuplet 3/2 { f8 e8 d8 } c'2 g4 |
			\tuplet 3/2 { f8 e8 d8 } c'2 g4 |
			\partial 2. \tuplet 3/2 { f8 e8 f8 } d2 |
		}
	>>
}
