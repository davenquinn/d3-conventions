# d3-conventions
A helper for quickly making d3 conventions without a lot of cruft.

This is different from a lot of the similar packages
(e.g. [GabrielFlorit's version](https://github.com/gabrielflorit/d3-conventions)
or **d3-jetpack**)
in that it doesn't expect a passed DOM object, and lets you apply the
conventions to whatever object you'd like. This is designed to be a little more
transparent to use and similar to garden-variety d3.

Usage (coffeescript).

```coffeescript
{select} = require 'd3'
conventions = require 'd3-conventions'

svg = select 'svg'
g = svg.append 'g'

{width,height} = svg.node().getBoundingClientRect()
# Or, you can pass the full rect object...
conventions {width, height}

```
