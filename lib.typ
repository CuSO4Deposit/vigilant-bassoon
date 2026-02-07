#import "@preview/frame-it:2.0.0": *

#let (backgroundBase, definition, example, invariant) = frames(
  backgroundBase: ("Background", rgb("#F3E8F5")),
  definition: ("Definition", rgb("#BF94E4")),
  example: ("Example", rgb("#E5E0FF")),
  invariant: ("Invariant", rgb("C5BAFF")),
)

#let background(title, body) = {
  set text(size: 10pt)
  backgroundBase[#title][#body]
}
