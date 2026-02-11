#import "@preview/frame-it:2.0.0": *

#let (
  algorithm,
  backgroundBase,
  definition,
  example,
  invariant,
  operation,
) = frames(
  algorithm: ("Algorithm", rgb("#A484CE")),
  backgroundBase: ("Background", rgb("#F3E8F5")),
  definition: ("Definition", rgb("#BF94E4")),
  example: ("Example", rgb("#E5E0FF")),
  invariant: ("Invariant", rgb("#C5BAFF")),
  operation: ("Operation", rgb("#9D8ABF")),
)

#let background(title, body) = {
  set text(size: 10pt)
  backgroundBase[#title][#body]
}

#let adt(
  name: "",
  short_desc: "",
  elements: [],
  relations: [],
  methods: [],
) = {
  block(
    width: 100%,
    stroke: 0.5pt + rgb("#2c3e50"),
    radius: 4pt,
    inset: (top: 0pt, rest: 10pt),
    breakable: false,
  )[
    #block(
      fill: rgb("#6D5D94"),
      inset: 6pt,
      width: 100%,
      radius: (top-left: 4pt, top-right: 4pt),
      outset: (left: 10pt, right: 10pt),
    )[
      #text(fill: white, weight: "bold")[ADT: #name]
      #h(1em)
      #text(
        fill: white.lighten(20%),
        size: 0.85em,
        style: "italic",
      )[#short_desc]
    ]

    #v(8pt)
    #grid(
      columns: (1fr, 1fr),
      gutter: 10pt,
      [*数据元素：* \ #elements], [*数据关系：* \ #relations],
    )
    #line(length: 100%, stroke: 0.5pt + gray.lighten(50%))

    *基本操作：*
    #show: frame-style(styles.thmbox)

    #methods
  ]
}

#let todo(content) = text(fill: red, 20pt)[#content]
