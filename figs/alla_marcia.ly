\version "2.24.4"
\include "../../figure-preamble.ly"

TrebleMel = \relative g {
	\override Score.SpacingSpanner.strict-grace-spacing = ##t
    g4. bes,8 d4 bes'4
    g4. a,16 bes16 d4 bes'4

    \clef bass
	g4.
	d'16 f16 g4.
	bes,16 d16 f4.
	bes,16 d16 es4.
    g,16 a16 d4.
}

TrebleStrikes = \relative g {
  \override Score.SpacingSpanner.strict-grace-spacing = ##t
    s8 <bes d>16 <bes d>16 <bes d>4. <bes d>8 s8 <bes d>8
	s8 <bes d>16 <bes d>16 <bes d>4. <bes d>8 s8 <bes d>8

    \clef treble
	s8
	<bes d>16 <bes d>16 <bes d>4.
	<g' bes>16 <g bes>16 <g bes>4.
	<bes d>16 <bes d>16 <bes d>4.
	<g c g'>16 <g c g'>16 <g c g'>4.
	<fis d' fis>16 <fis d' fis>16 <fis d' fis>4.
}

BassMel = \relative g,, {
  \override Score.SpacingSpanner.strict-grace-spacing = ##t
    <g g'>4. g8 bes4 <bes bes'>4
    <g g'>4. a16 bes16 d4 <bes bes'>4

	\clef bass
    <g g'>4.
	d''16 f16 <g, g'>4.
	bes16 d16 <f, f'>4.
	bes16 d16 <es, es'>4.
	g16 a16 <d, d'>4.
}

BassStrikes = \relative g {
  \override Score.SpacingSpanner.strict-grace-spacing = ##t
	s8 <d g>16 <d g>16 <d g>4. <d g>8 s8 <d g>8
	s8 <d g>16 <d g>16 <d g>4. <d g>8 s8 <d g>8

	\clef bass
	s8
    <d g>16 <d g>16 <d g>4.
    <d bes' d>16 <d bes' d>16 <d bes' d>4.
    <d bes' d>16 [ <d bes' d>16 ] <d bes'd>4.
	<g a c>16 <g a c>16 <g a c>4.
	<fis a d>16 <fis a d>16 <fis a d>4.
}

\new GrandStaff \relative <<
	\chords {
		\set chordChanges = ##t
		\set noChordSymbol = ""

		g1:m r1
		g2:m g2:m/d
		bes2
		a2:m7
		d2:maj
	}
	\new Staff {
		\key g \minor
		\numericTimeSignature
		\time 4/4
		\tempo "Alla Marcia"

		\autoLineBreaksOff

		\clef bass			
		<<
			{ \voiceOne \TrebleMel }
			{ \new Voice { \voiceTwo \TrebleStrikes }}
		>>
	}
	\new Staff {
		\key g \minor
		\numericTimeSignature
		\time 4/4

		\autoLineBreaksOff

		\clef bass
		<<
			{ \voiceOne \BassMel }
			{ \new Voice { \voiceTwo \BassStrikes }}
		>>
	}
>>
