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

\score {
  <<
  \new Staff {
    \context Voice = "vocal" { \melody }
  }
  \new Lyrics \lyricsto "vocal" \text
  >>
}