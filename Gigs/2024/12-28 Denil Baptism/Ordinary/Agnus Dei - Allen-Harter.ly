\version "2.24.4"

\header {
  title = "Agnus Dei"
}

melody = \relative c'' {
  \key e \minor
  % Agnus De-
  \time 3/4
  a8([ b]) a([ g]) c4
  % -i,
  \time 4/4
  b2( a)
  % qui tollis
  \time 3/4
  r8 b d4 e
  % peccata 
  \time 4/4
  b8([ c b]) a g([ fis] e4) 
  % mun-
  d8([ fis g fis] e4. d8)
  %-di: mise-
  \time 3/4
  e4 r b'8 b
  % -rere no-
  b4 a d
  % -bis.
  \time 4/4
  cis2( b)
  \bar ":|." \break
  % ---

  % Agnus De-
  r8 b d([ e]) d([ c b a])
  % -i, qui tollis
  b4 r8 b d4 e
  % peccata
  b8([ c b]) a g([ fis] e4)
  % mun-
  d8([ fis g fis] e4. d8) \break
  % -di: dona
  \time 3/4
  e4 r fis8 a
  % nobis
  \time 4/4
  b4 e,8([ g fis e] d4)
  % pacem.
  g2 fis( e1)
  \bar "|."
}

text = \lyricmode {
  A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di:
  mi -- se -- re -- re no -- bis.

  A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di:
  do -- na no -- bis pa -- cem.
}

\score {
  <<
  \new Staff {
    \context Voice = "vocal" { \melody }
  }
  \new Lyrics \lyricsto "vocal" \text
  >>
}
