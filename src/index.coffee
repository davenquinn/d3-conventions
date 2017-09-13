conventions = (opts={})->
  ### D3 conventions ###
  {width, height, margin, left, top, bottom, right, container} = opts
  margin ?= 10
  left ?= margin
  right ?= margin
  top ?= margin
  bottom ?= margin
  if container?
    {width, height} = container.node().getBoundingClientRect()
    width -= (left+right)
    height -= (top+bottom)

  innerSize = {width, height}
  size = {width: width+left+right, height: height+top+bottom}
  margin = {left, right, top, bottom}
  transform = "translate(#{left},#{top})"
  {innerSize, margin, size, transform}

module.exports = conventions
