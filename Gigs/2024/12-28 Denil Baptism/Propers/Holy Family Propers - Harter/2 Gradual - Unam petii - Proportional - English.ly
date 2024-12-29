\version "2.24.4"

\header {
  title = "Unam petii"
  subtitle = "Gradual for the Feast of the Holy Family"
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
  % One thing have I asked
  f4( f8[ g]) f4 \initioDebilis g16( a8[ g] a4) g f8([ g] f4 d4) \quarterBar
  % of the Lord,
  d4 \initioDebilis d16( g8[ f g a]) g4( a8[ bes g f] \oriscus f4 d f g f) \quarterBar
  % this will I seek after;
  a8([ c]) c4( a) c8([ a] c4) c( a) a8([ g]) a2 \halfBar
  % that I may dwell
  a8([ c]) c4 bes4( \quilisma c16 d4 c4. bes16[ a] bes4) bes( a) \quarterBar 
  % in the house of the Lord.
  bes4 bes a4( a g g8[ a]) a([ g a f g f]) e([ f]) f4( a8[ bes] a4 f4 \quarterBar
  a8[ g a c] a4 \oriscus a f g f2) \doubleBar \break

  % (simple Psalm Tone)
  % To gaze in delight upon the Lord's beauty,
  f4 a c c c c c d d c( b2) \fullBar
  % and to be sheltered in his holy temple.
  c8([ a]) b([ c]) c4 c c c c d b c a( g a8[ g] f4 g2) \doubleBar

}

text = \lyricmode {
  One thing have I asked of the Lord, this will I seek af -- ter; that I may dwell in the house of the Lord.
  \markup { V. "To" } gaze in de -- light upon the Lord's beau -- ty, and to be shel -- ter'd in his ho -- ly tem -- ple.
  One thing...
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
      instrumentName = "GR. V"
      \consists Custos_engraver
      \override Custos.style = #'medicaea
    }
  }
}
