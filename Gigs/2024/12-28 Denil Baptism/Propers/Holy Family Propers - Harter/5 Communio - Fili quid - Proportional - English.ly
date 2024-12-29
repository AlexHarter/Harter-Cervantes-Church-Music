\version "2.24.4"

\header {
  title = "Fili quid"
  subtitle = "Communion for the Feast of the Holy Family, Years B & C"
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
  \key d \minor
  \omit Staff.TimeSignature
  \cadenzaOn
  \override Staff.StaffSymbol.color = #darkred
}

melody = \transpose c c \relative c' {
  \global
  % My son, why have you treated us so?
  f8([ d] f4) f f g8([ e]) g4( a) a a8([ f] g4) g e8([ f] d4) \halfBar

  % Your father and I
  d8([ f] f4) d8([ f] f4) f8([ d]) f4( a) g \initioDebilis a16( bes8[ a] a4 g) \quarterBar

  % have been anxiously looking for you.
  g4 f8([ e] f4 e8[ d]) e4( d) f g8([ a]) a([ g] a4) f( g f) f \fullBar


  % How is it that you were seeking me?
  f4 \initioDebilis a16( bes8[ a]) a4 g a8([ bes] a4) g f( f) g( f) f \halfBar

  % Did you not know
  f4 a g \initioDebilis g16( c4 c a bes a) \quarterBar

  % that I must be about
  f4 g8([ a]) g8([ c]) c([ c] c4) g4( \quilisma a16 c8[ b] a4) a8([ g] a4) \quarterBar

  % my Father's business?
  g4( a) f8([ g] \oriscus g4 a) f8([ e] d4) d4( e d) d2 \doubleBar \break

}

text = \lyricmode {
  My son, why have you treat -- ed us so? \markup { * "Your" } fa -- ther and I have been an -- xious -- ly look -- ing for you. How is it that you were seek -- ing me? Did you not know that I must be a -- bout my Fa -- ther's busi -- ness?
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
      instrumentName = "CO. I"
      \consists Custos_engraver
      \override Custos.style = #'medicaea
    }
  }
}
