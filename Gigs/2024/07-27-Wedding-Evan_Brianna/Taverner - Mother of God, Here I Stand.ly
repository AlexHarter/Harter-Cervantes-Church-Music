\version "2.25.16"

\header {
  title = "Mother of God, Here I Stand"
  composer = "Music by John Tavener (1944 - 2013)"
  arranger = "Arranged by Alex Harter"
}

global = {
  \key g \major
  \time 2/2
  \cadenzaOn
  \omit Staff.TimeSignature
  \tempo "Hushed, with infinite tenderness (Half Note = c.52)"
  % the original suggested tempo is even slower, but I sped it up based on actual recordings of this piece, along with the consideration that it will be sun by a solo singer instead of a choir.
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  
  b2 b b c4( d) b2 a g1 \bar "|" a2.( b4) g( fis e fis) g1 \bar "|" \break
  g2 g fis4( e) g g fis e \bar "|" d'2 e fis,( g) \bar "|" d1 \bar "|" \break
  b'2 b b c4 d b2( a g1) \bar "|" a2. b4 g( fis) e( fis) g1 \bar "|" \break
  g2 g fis4( e) g4 g fis e d'2 \bar "|" e( fis, g) \bar "|" d1 \bar "|" \break
  b'2 b b( c4 d) \bar "|" b2 a g1 \bar "|" a2. b4 g( fis) e( fis) g1 \bar "|" \break
  g2 g fis4 e g4 g fis e \bar "|" d'2( e fis, g \bar "|" d1) \bar "|" \break
  b'2 b b( c4 d b2) a g1 \bar "|" a2. b4 g( fis) e( fis) g2 g \fine
  
}

altoVoice = \relative c'' {
  \global
  
  g2 a g g4( fis) g2 fis fis( e) \bar "|" e1 d d \bar "|" \break
  e2 e e e4 e e e \bar "|" fis( g) g2 e4( d c2) \bar "|" c1 \bar "|" \break
  g'2 a g g4 fis g2( fis~ fis e) \bar "|" e2. e4 d2 d d1 \bar "|" \break
  e2 e e e4 e e e fis( g) \bar "|" g2( e4 d c2) \bar "|" c1 \bar "|" \break
  g'2 a g( g4 fis) \bar "|" g2 fis fis( e) \bar "|" e2. e4 d2 d d1 \bar "|" \break
  e2 e e4 e e e e e \bar "|" fis( g~ g2 e4 d c2 \bar "|" c1) \bar "|" \break
  g'2 a g( g4 fis g2) fis fis( e) \bar "|" e2. e4 d2 d d d \fine
}

tenorVoice = \relative c' {
  \global
  
  d2 d e e4( c) e2 b b1 \bar "|" a1 a b \bar "|" \break
  c2 c c c4 c c c \bar "|" c4( d) d( e) a,2( g) \bar "|" a1 \bar "|" \break
  d2 d e e4 c e2( b b1) \bar "|" a2. a4 a2 a b1 \bar "|" \break
  c2 c c c4 c c c c4( d) \bar "|" d( e a,2 g) \bar "|" a1 \bar "|" \break
  d2 d e( e4 c) \bar "|" e2 b b1 \bar "|" a2. a4 a2 a b1 \bar "|" \break
  c2 c c4 c c c c c \bar "|" c4( d~ d e a,2 g \bar "|" a1) \bar "|" \break
  d2 d e( e4 c e2) b b1 \bar "|" a2. a4 a2 a b2 b \fine
}

bassVoice = \relative c' {
  \global
  
  g2 fis e c4( b) c2 d e1 \bar "|" c1 d g, \bar "|" \break
  a2 a a a4 a a a \bar "|" b2 c c( e,) \bar "|" fis1 \bar "|" \break
  g'2 fis e c4 b c2( d e1) \bar "|" c2. c4 d2 d g,1 \bar "|" \break
  a2 a a a4 a a a b2 \bar "|" c1( e,2) \bar "|" fis1 \bar "|" \break
  g'2 fis e( c4 b) \bar "|" c2 d e1 \bar "|" c2. c4 d2 d g,1 \bar "|" \break
  a2 a a4 a a a a a \bar "|" b2( c1 e,2 \bar "|" fis1) \bar "|" \break
  g'2 fis e( c4 b c2) d e1 \bar "|" c2. c4 d2 d g, g \fine
}

verse = \lyricmode {
  Mo -- ther of God, here I stand now pray -- ing,
  Be -- fore this i -- kon of your ra -- diant bright -- ness
  Not pray -- ing to be saved from a bat -- tle -- field;
  Not giv -- ing thanks, nor seek -- ing for -- give -- ness
  for the sins of my soul, nor for all the souls
  Numb, joy -- less and de -- so -- late on earth;
  but for her a -- lone, whom I whol -- ly give you...
  
}

rightOne = \relative c'' {
  \global
  
  b2 b b c4( d) b2 a g1 \bar "|" a2.( b4) g( fis e fis) g1 \bar "|" \break
  g2 g fis4( e) g g fis e \bar "|" d'2 e fis,( g) \bar "|" d1 \bar "|" \break
  b'2 b b c4 d b2( a g1) \bar "|" a2. b4 g( fis) e( fis) g1 \bar "|" \break
  g2 g fis4( e) g4 g fis e d'2 \bar "|" e( fis, g) \bar "|" d1 \bar "|" \break
  b'2 b b( c4 d) \bar "|" b2 a g1 \bar "|" a2. b4 g( fis) e( fis) g1 \bar "|" \break
  g2 g fis4 e g4 g fis e \bar "|" d'2( e fis, g \bar "|" d1) \bar "|" \break
  b'2 b b( c4 d b2) a g1 \bar "|" a2. b4 g( fis) e( fis) g2 g \fine
  
}

rightTwo = \relative c'' {
  \global
  
  g2 a g g4( fis) g2 fis fis( e) \bar "|" e1 d d \bar "|" \break
  e2 e e e4 e e e \bar "|" fis( g) g2 e4( d c2) \bar "|" c1 \bar "|" \break
  g'2 a g g4 fis g2( fis~ fis e) \bar "|" e2. e4 d2 d d1 \bar "|" \break
  e2 e e e4 e e e fis( g) \bar "|" g2( e4 d c2) \bar "|" c1 \bar "|" \break
  g'2 a g( g4 fis) \bar "|" g2 fis fis( e) \bar "|" e2. e4 d2 d d1 \bar "|" \break
  e2 e e4 e e e e e \bar "|" fis( g~ g2 e4 d c2 \bar "|" c1) \bar "|" \break
  g'2 a g( g4 fis g2) fis fis( e) \bar "|" e2. e4 d2 d d d \fine
  
}

leftOne = \relative c' {
  \global
  
  d2 d e e4( c) e2 b b1 \bar "|" a1 a b \bar "|" \break
  c2 c c c4 c c c \bar "|" c4( d) d( e) a,2( g) \bar "|" a1 \bar "|" \break
  d2 d e e4 c e2( b b1) \bar "|" a2. a4 a2 a b1 \bar "|" \break
  c2 c c c4 c c c c4( d) \bar "|" d( e a,2 g) \bar "|" a1 \bar "|" \break
  d2 d e( e4 c) \bar "|" e2 b b1 \bar "|" a2. a4 a2 a b1 \bar "|" \break
  c2 c c4 c c c c c \bar "|" c4( d~ d e a,2 g \bar "|" a1) \bar "|" \break
  d2 d e( e4 c e2) b b1 \bar "|" a2. a4 a2 a b2 b \fine
  
}

leftTwo = \relative c' {
  \global
  
  g2 fis e c4( b) c2 d e1 \bar "|" c1 d g, \bar "|" \break
  a2 a a a4 a a a \bar "|" b2 c c( e,) \bar "|" fis1 \bar "|" \break
  g'2 fis e c4 b c2( d e1) \bar "|" c2. c4 d2 d g,1 \bar "|" \break
  a2 a a a4 a a a b2 \bar "|" c1( e,2) \bar "|" fis1 \bar "|" \break
  g'2 fis e( c4 b) \bar "|" c2 d e1 \bar "|" c2. c4 d2 d g,1 \bar "|" \break
  a2 a a4 a a a a a \bar "|" b2( c1 e,2 \bar "|" fis1) \bar "|" \break
  g'2 fis e( c4 b c2) d e1 \bar "|" c2. c4 d2 d g, g \fine
  
}

pedal = \relative c {
  \global
  
  g1~ 1~ 1 e1\bar "|" c1 d g~ \bar "|" \break
  g1~ 1.~ \bar "|"  1~ 1~ \bar "|" 1~ \bar "|" \break
  g1~ 1~ \bar "|" 1 e \bar "|" c d g~ \break
  g1~ 1~ 1~ \bar "|" 1.~ \bar "|" 1~ \bar "|" \break
  g1~ 1~ \bar "|" 1 e1 \bar "|" c d g~ \bar "|" \break
  g1~ 1.~ \bar "|" 1~ 1~ \bar "|" 1~ \bar "|" \break
  g~ 1~ 1 e \bar "|" c1 d g \fine
  
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "choir oohs"
} { \sopranoVoice }
\addlyrics { \verse }

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Organ"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } << \rightOne \\ \rightTwo >>
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \new Staff = "pedal" \with {
    instrumentName = \markup {\italic "optional"}
    midiInstrument = "church organ"
  } { \clef bass \pedal }
>>

\score {
  <<
    \sopranoVoicePart
    \organPart
  >>
  \layout { }
  \midi {
    \tempo 2=52
  }
}
