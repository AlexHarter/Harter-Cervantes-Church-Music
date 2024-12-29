\version "2.24.4"

\header {
  title = "Sanctus"
}

melody = \relative c'' {
  \key e \minor
  % Sanctus, Sanctus
  a8([ b]) a4 fis8([ g]) e4
  % Sanctus Dominus Deus
  fis8 a a b cis4 d8 b
  % Sabaoth Pleni sunt
  a8 g a4 r8 b cis d
  % caeli et terra
  e4 d8 cis b([ a]) b4
  % gloria tua.
  d4 c8 b a([ g]) a4 \break
  % Hosanna in ex-
  r4 r8 b gis a b d
  % -celsis, hosanna in ex-
  cis4 a8 e fis g a c
  % -celsis, hosanna in ex-
  b4 g8 b a b c d
  % -celsis.
  e2 b2 \bar "||" \break

  % Benedi-
  r4 g8 g b([ c d e])
  % -ctus qui ve-
  d4 r8 d d([ c b a])
  % -nit in nomine
  g8 b e4. d8 c([ b])
  % Domini. Ho-
  d8 b a2 r8 b8
  % -sanna in excelsis, ho-
  gis8 a b d cis4 a8 e
  % -sanna in excelsis, ho-
  fis8 g a c b4 g8 b
  % -sanna in excelsis.
  a8 b c d e4 e\fermata \bar "|."
}

text = \lyricmode {
  San -- ctus, San -- ctus, San -- ctus, Do -- mi -- nus De -- us Sa -- ba -- oth.
  Ple -- ni sunt cae -- li et ter -- ra glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis, ho -- san -- na in ex -- cel -- sis, ho -- san -- na in ex -- cel -- sis.

  Be -- ne -- dic -- tus qui ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na in ex -- cel -- sis, ho -- san -- na in ex -- cel -- sis, ho -- san -- na in ex -- cel -- sis.
}

\score {
  <<
  \new Staff {
    \context Voice = "vocal" { \melody }
  }
  \new Lyrics \lyricsto "vocal" \text
  >>
  \new Staff {
    
  }
}
