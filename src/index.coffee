{scaleLinear} = require 'd3-scale'

conventions = (opts={})->
  ### D3 conventions ###
  {width, height, margin, left, top,
   bottom, right, container, inset} = opts

  inset ?= true
  margin ?= 10
  left ?= margin
  right ?= margin
  top ?= margin
  bottom ?= margin
  if container?
    inset = true # We have to be inset because we already know the size
    container = container.node() if container.node?
    {width, height} = container.getBoundingClientRect()

  width ?= 800
  height ?= 500

  if inset
    width -= (left+right)
    height -= (top+bottom)

  innerSize = {width, height}
  size = {width: width+left+right, height: height+top+bottom}
  margin = {left, right, top, bottom}
  transform = "translate(#{left},#{top})"

  x = scaleLinear().range [0,width]
  y = scaleLinear().range [height,0]

  {innerSize, margin, size, transform, x, y}

module.exports = conventions

