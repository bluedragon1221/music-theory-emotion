\version "2.24.0"
\include "../figure-preamble.ly"
\language "english"

{
	\new GrandStaff <<
		\chords {
			af2
			c2:7
			f2:min
			c2
			f2:min
			f2:7
			bf2
			f2
			bf2:min
			d2:dim
			ef2
			ef2:dim
			ef1
		}

		\new Staff \relative c' {
			\key c \minor
			\numericTimeSignature
			\time 4/4
			\clef treble

		    ef'8 ef, af ef
			e' e, c' e, |
			f' f, c' f,
			g' g, c g |
		    af' af, c af
			a' a, c a |
			bf' bf, f' bf,
			c' c, f c |

		    df' df, f df
			d' d, f d |
			ef' ef, g ef
			b' b, ef b |
		    r \f c ef c
			c' c, ef c |
			r f, af f
			d' f, af f |

		}
		\new Staff \relative c {
			\key c \minor
			\numericTimeSignature
			\time 4/4
			\clef bass

			c af' ef af
			bf, g' c, g' |
			af, af' c, af'
			g, g' c, g' |
			f, f' c f
			ef, ef' f, ef' |
			d, d' f, d'
			c, c' f, c' |

			bf, bf' f bf
			af, af' f af |
			g, g' ef g
			g, g' ef g |
			<af af,>4 r r2 |
			<bf bf,>4 r r2 |
		}
	>>
}
