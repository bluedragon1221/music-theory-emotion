\version "2.24.4"
\include "../../figure-preamble.ly"

Snare = \drummode {
    sn4 sn4 sn4 sn4
	sn4 sn4 sn8 [ sn16 sn16 ] sn8 [ sn8 ]
    sn4 sn4 sn4 sn4 sn4
	sn4 sn8 [ sn16 sn16 ] sn8 [ sn8 ]
    sn8 [ sn8 sn8 sn8 ] sn8 [ sn8 sn8 sn8 ]
    sn8 [ sn8 sn8 sn8 ] sn8 [ sn8 sn8 sn8 ]
    sn16 [ sn16 sn16 sn16 ] sn16 [ sn16 sn16 sn16 ] sn16 [ sn16 sn16 sn16 ] sn16 [ sn16 sn16 sn16 ]
    sn32 [ sn32 sn32 sn32 sn32 sn32 sn32 sn32 ] sn32 [ sn32 sn32 sn32 sn32 sn32 sn32 sn32 ] sn4 r4
}

Kick = \drummode {
    bd4 r4 r2
    bd4 r4 r2
    bd4 r4 r2
    bd4 r4 r2
    bd4 r4 bd4 r4
    bd4 r4 bd4 r4
    bd4 bd4 bd4 bd4
    bd8 [ bd8 bd8 bd8 ] bd4 r4
}


\new DrumStaff {
	\numericTimeSignature
	\time 4/4
	\clef percussion

    <<
		{ \new DrumVoice { \voiceOne \Snare } }
		{ \new DrumVoice { \voiceTwo \Kick } }
    >>
}
