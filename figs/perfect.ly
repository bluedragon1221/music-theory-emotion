\include "../../figure-preamble.ly"

{
	\version "2.24.4"
	\time 6/8

	\relative <<
		\chords {
			\set chordChanges = ##t
			\set noChordSymbol = ""
			r2. c2. c2. a2.:m a2.:m g2. g2. f2. f2.
		}
		\new Voice = "melody" {
			r4. g8 a8 c8
			c2.~
			c4. e8 d8 c8
			e2.~
			e2.
			d8 e8 e8 e8 c8 c8
			c2. c8 d8 e8
			d2.
		}
	>>
}
