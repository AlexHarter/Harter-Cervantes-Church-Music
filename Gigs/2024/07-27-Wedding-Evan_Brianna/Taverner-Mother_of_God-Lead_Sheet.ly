\version "2.24.3"
\header {
  title = "Mother of God, Here I Stand"
  composer = "Music by John Taverner"
}

global = {
  \key g \major
  \cadenzaOn
  \omit Staff.TimeSignature
}

melody = \relative c'' {
  \global
  
  b2 b b c4( d) b2 a g1 \bar "|" a2.( b4) g( fis e fis) g1 \bar "|" \break
  g2 g fis4( e) g g fis e \bar "|" d'2 e fis,( g) \bar "|" d1 \bar "|" \break
  b'2 b b c4 d b2( a g1) \bar "|" a2. b4 g( fis) e( fis) g1 \bar "|" \break
  g2 g fis4( e) g4 g fis e d'2 \bar "|" e( fis, g) \bar "|" d1 \bar "|" \break
  b'2 b b( c4 d) \bar "|" b2 a g1 \bar "|" a2. b4 g( fis) e( fis) g1 \bar "|" \break
  g2 g fis4 e g4 g fis e \bar "|" d'2( e fis, g \bar "|" d1) \bar "|" \break
  b'2 b b( c4 d b2) a g1 \bar "|" a2. b4 g( fis) e( fis) g2 g \fine
}

text = \lyricmode {
  Mo -- ther of God, here I stand now pray -- ing,
  Be -- fore this i -- kon of your ra -- diant bright -- ness
  Not pray -- ing to be saved from a bat -- tle -- field;
  Not giv -- ing thanks, nor seek -- ing for -- give -- ness
  for the sins of my soul, nor for all the souls
  Numb, joy -- less and de -- so -- late on earth;
  but for her a -- lone, whom I whol -- ly give you...
}

alto = \relative c'' {
  g2 a g g4( fis) g2 fis fis( e) \bar "|" e1 d d \bar "|" \break
  e2 e e e4 e e e \bar "|" fis( g) g2 e4( d c2) \bar "|" c1 \bar "|" \break
  g2 a g g4 fis g2( fis( fis) e) \bar "|" e2. e4 d2 d d1 \bar "|" \break
  e2 e e e4 e e e fis( g) \bar "|" g2( e4 d c2) \bar "|" c1 \bar "|" \break
  g2 a g( g4 fis) \bar "|" g2 fis fis( e) \bar "|" e2. e4 d2 d d1 \bar "|" \break
  e2 e e4 e e e e e \bar "|" fis( g( g2) e4 d c2 \bar "|" c1) \bar "|" \break
  g2 a g( g4 fis g2) fis fis( e) \bar "|" e2. e4 d2 d d \fine
}

tenor = \relative c' {
  d2 d e e4( c) e2 b b1 \bar "|" a1 a b \bar "|" \break
  c2 c c c4 c c c \bar "|" c4( d) d( e) a2( g) \bar "|" a1 \bar "|" \break
  d2 d e e4 c e2 b b1 \bar "|" a2. a4 a2 a b4 \bar "|" \break
  c2 c c c4 c c c c4( d) \bar "|" d( e a2 g) \bar "|" a1 \bar "|" \break
  d2 d e( e4 c) \bar "|" e2 b b1 \bar "|" a2. a4 a2 a b4 \bar "|" \break
  c2 c c4 c c c c c \bar "|" c4( d( d) e a2 g \bar "|" a1) \bar "|" \break
  d2 d e( e4 c e2) b b1 \bar "|" a2. a4 a2 a b2 b \fine
}

bass = \relative c' {
  g2 fis e c4( b) c2 d e1 \bar "|" c1 d g \bar "|" \break
  a2 a a a4 a a a \bar "|" b2 c c( e,) \bar "|" f1 \bar "|" \break
  g2 fis e c4 b c2( d e1) \bar "|" c2. c4 d2 d g1 \bar "|" \break
  a2 a a a4 a a a b2 \bar "|" c1( e,2) \bar "|" f1 \bar "|" \break
  g2 fis e( c4 b) \bar "|" c2 d e1 \bar "|" c2. c4 d2 d g1 \bar "|" \break
  a2 a a4 a a a a a \bar "|" b2( c4 e, \bar "|" f1) \bar "|" \break
  g2 fis e( c4 b c2) d e1 \bar "|" c2. c4 d2 d g g \fine
}

\score {
  <<
  \new Staff {
    \context Voice = "vocal" { \melody }
  }
  \new Lyrics \lyricsto "vocal" \text
  >>
}
