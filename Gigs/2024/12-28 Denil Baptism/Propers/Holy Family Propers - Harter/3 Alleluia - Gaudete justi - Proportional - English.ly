\version "2.24.4"

\header {
  title = "Guadete justi"
  subtitle = "Alleluia for the Feast of the Holy Family"
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
  % Alleluia
  d4( e f) e( f) g( a8[ g] e4 f8[ \oriscus g] a4) a8([ c a g] \oriscus g4 f \quarterBar
  % (a)
  g8[ a] g4 a g8[ f] \oriscus f[ d] g4 a g e g f g f \oriscus f e2) \doubleBar \break
  
  % Simple Psalm Tone
  % Rejoice in the Lord, O you just.
  a8([ g]) g([ a]) a4 a8([ g]) g([ b]) b4 a8([ b]) a2 \fullBar 
  % It is fitting that loyal hearts should praise him.
  a8([ g]) g([ a]) a4 a a a a a8([ f]) g8([ a]) g4 e4( g8[ f] f4) \doubleBar
}

text = \lyricmode {
  Al -- le -- lu -- ia.
  \markup { V. "Re" } -- joice in the Lord, O you just. It is fit -- ting that loy -- al hearts should praise him.
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
      instrumentName = "AL. IV"
      \consists Custos_engraver
      \override Custos.style = #'medicaea
    }
  }
}
