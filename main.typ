#import "@preview/frame-it:2.0.0": divide, frame-style, styles
#import "lib.typ": background, definition, example

#set text(font: "LXGW WenKai")
#set page(numbering: "1/1")
#show: frame-style(styles.boxy)

= 图例

#linebreak()

#background(numbering: none)[背景知识][#text(
  11pt,
  rgb("#222"),
)[这是一个背景知识。]]

#example(numbering: none)[例子][这是一个例子。]

#definition(
  numbering: none,
)[定义][这是一个定义。#divide() 通常底下会有一句人话版。]
