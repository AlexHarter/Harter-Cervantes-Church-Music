\version "2.24.4"

\header {
  title = "Deus in loco sancto suo"
  subtitle = "Introit for the Feast of the Holy Family"
}

oriscus = {
  %default_oriscus
  \once \override NoteHead.stencil = #ly:text-interface::print
  \once \override NoteHead.text = \markup \musicglyph "noteheads.ssolesmes.oriscus"
  \once \set fontSize = 3
  %end
}

quilisma = {
  %default_quilisma
  \once \override NoteHead.stencil = #ly:text-interface::print
  \once \override NoteHead.text = \markup \musicglyph "noteheads.svaticana.quilisma"
  \once \set fontSize = 3
  \once \override Stem.transparent = ##t
  %end
}

initioDebilis = {
  %default_initioDebilis
  \once \set fontSize = -3
  \once \override Stem.transparent = ##t
  %end
}

liquescentDiminutive = {
  \once \set fontSize = -3
}

liquescentAugmentativeAscending = {
  \once \override NoteHead.stencil = #ly:text-interface::print
  \once \override NoteHead.text = \markup \musicglyph "noteheads.ssolesmes.auct.asc"
  \once \set fontSize = 3
}

liquescentAugmentativeDescending = {
  \once \override NoteHead.stencil = #ly:text-interface::print
  \once \override NoteHead.text = \markup \musicglyph "noteheads.ssolesmes.auct.desc"
  \once \set fontSize = 3
}

quarterBar = {
  \bar "'"
}

halfBar = {
  \bar ","
}

fullBar = {
  \bar "|"
}

doubleBar = {
  \bar "||"
}

global = {
  \key g \major
  \omit Staff.TimeSignature
  \cadenzaOn
  \override Staff.StaffSymbol.color = #darkred
}

melody = \transpose c g, \relative c'' {
  \global
  % God is in his holy dwelling-place
  d4( d8[ e]) d4 d d d( e8[ d] d4) b( a) b( \quilisma c16 d4) a( g) g( a g2) \halfBar
  % the God who causes us to dwell
  b8([ g]) g4 \initioDebilis a16( b4) b8([ a] b4) b8([ a] b4) d8([ b]) d([ d] d[ e]) d4 \quarterBar
  % together, one at heart,
  d4 fis8([ e] d4) d( b) b8([ \oriscus d] e4) e( fis e) d \halfBar
  % in his house;
  d4( e) d( e8[ d] d4) cis( b2) \halfBar
  % he himself will give pow'r
  b4 d4( d) \oriscus d( e) b d( cis8[ e] d4) cis8([ d] b4) \quarterBar
  % and strength
  b4( c b g) g8([ b a g] a4 g) \quarterBar
  % to his people.
  g8([ a] c[ b] \oriscus c4 d) d( c c a \quilisma b16 c4) g( a g) g2 \doubleBar \break
  
  % Let God arise, and let his enemies be scattered;  
  \initioDebilis g16( c8[ b]) c([ d]) d4 d \halfBar
  d4 d d d d d8([ f]) e4 e8([ d]) d4( e2) \fullBar
  % and let those who hate him flee before his face.
  d8([ b]) c([ d]) d4 d d8([ e]) d4 \halfBar
  d4 \quilisma e16( f4) d( c) c8([ c] c4) a( g2) \doubleBar
}

text = \lyricmode {
  God is \markup{ * "in"} his ho -- ly dwell -- ing place; the God who caus -- es us to dwell to -- ge -- ther, one at heart, in his house; he him -- self will give pow'r and strength to his peo -- ple.

  \markup{ V. "Let"} God a -- rise, and let his e -- ne -- mies be scatt -- er'd; \markup { * "and"} let those who hate him flee be -- fore his face.
}

\score {
  <<
  \new Staff {
    \context Voice = "vocal" { \melody }
  }
  \new Lyrics \lyricsto "vocal" \text
  >>
  \layout {
    \context {
      \Staff
      instrumentName = "IN. III"
      \consists Custos_engraver
      \override Custos.style = #'medicaea
    }
  }
}
