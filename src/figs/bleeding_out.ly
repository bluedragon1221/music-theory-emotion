\version "2.24.4"
\include "../../figure-preamble.ly"

{
	\relative <<
		\chords {
			\set noChordSymbol = ""
			r4
			f1:m des1 aes1 ees1
			f1:m des1 aes1 ees1
			f1:m des1 aes1 ees1
			f1:m des1 aes1 ees1
		}
		\new Staff {
			\key aes \major
			\numericTimeSignature
			\time 4/4

			\partial 4 es''4 |
		    as2 r4 r8 g8
		    f8 es2 es8 as8 es8
		    as4 as4 as8 bes4 bes8 ~
		    bes2 r4 \break g4
		    as2 r4 r8 g8
		    f8 es2 r8 es4
		    es4 des8 des4 c4 <bes es>8 ~
		    <bes es>2 r4 \break f'8 <f g>8

			<c as'>4 f4 <c as'>4 f8 f8
		    <des as'>4 f4 <des as'>4 f8 f8
		    <c as'>4 es4 <c as'>4 es8 es8
		    <bes g'>4 es8 g8 ~ <bes, g'>4 \break g'4

		    as2 r4 r8 g8
		    f8 es2 r8 es4
		    es4 des8 des4 c4 bes8 ~
		    \partial 2. bes2 r4 |
		}
	>>
}
