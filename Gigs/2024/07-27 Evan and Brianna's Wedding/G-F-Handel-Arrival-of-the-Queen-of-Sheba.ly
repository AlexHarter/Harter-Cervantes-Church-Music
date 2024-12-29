\version "2.24.3"
\header {
  title = "Arrival of the Queen of Sheba"
  composer = "G. F. Handel"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}


global = {
  \key bes \major
}

melody = \relative {
  \global
  bes''16 f d f bes f d f bes f d f bes f d f
  c bes' a g f ees d c d bes c d ees f g a
  bes f d f bes f d f bes f d f bes f d f
  a g f g c,8 e f c16 d c d c d
  
  %m.5
  c a f a c a f a f' d bes d f d bes d
  ees c a c ees c a c d f, g a bes c d ees
  f d bes d f d bes d f c a c f c a c
  d bes g bes d bes g bes d a f a d a f a
  bes' g ees g bes g ees g bes f d f bes f d f
  ees f g f ees d c bes a bes c bes a g d ees
  d f ees g f a g bes a c bes d c ees d f
  ees f ees f g f ees d c d c d ees f ees f
  g f g f ees d ees d c d c d ees f ees f
  g f g f ees d ees d c d c d ees d ees c
  d f ees g f a g bes a8 g16 f bes8 ees,
  d c16 bes f8 a bes f bes,4
  
  %m.17
  bes16 c d ees d8 c bes f'4 ees8
  d ees16 d ees8 c d16 ees f g f8 ees
  
}

bass = \relative {
  \global
  \clef "bass"
  bes8 bes a a g g f f
  ees ees f f bes4 bes,
  d8 d g, g c c e e
  f bes c c, f4 a,8 c
  
  %m.5
  f f ees ees d d g g
  c, c f f bes4 bes,
  bes'8 bes bes bes a a a a
  g g g g f f f f
  ees ees ees ees d d d d
  c ees16 f g f ees d c8 a16 bes c bes a g
  bes8 c d ees f g a bes
  ees, ees ees ees f f f f
  f f a a c c a a
  f f a a c c a a
  f a bes g f ees d ees
  f ees f f, bes4
  
  %m.17
}

\score {
  <<
  \new Staff {
    \melody
  }
  \new Staff {
    \bass
  }
  >>
}