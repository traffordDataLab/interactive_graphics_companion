# Interactive graphics companion

The Interactive Graphics Companion provides the JSON code to create different data visualisations in [Vega-Lite](https://vega.github.io/vega-lite). The visualisations are grouped according to the Financial Times' [Visual Vocabulary](http://www.ft.com/vocabulary) using data derived from [Gapminder](https://www.gapminder.org/).

Code in this repo is licensed under [MIT](LICENSE.txt). Data derived from [Gapminder](https://www.gapminder.org/) is licensed under [Creative Commons Attribution Licence 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).

### Change over Time

- [x] [Line](src/line_single.vl.json)
- [x] [Column](src/column.vl.json)
- [ ] Column + line timeline
- [x] [Slope](src/slope.vl.json)
- [x] [Area chart](src/area.vl.json)
- [ ] Candlestick
- [ ] Fan chart (projections)
- [ ] Connected scatterplot
- [ ] Calendar heatmap
- [ ] Priestley timeline
- [x] [Circle timeline](src/circle_timeline.vl.json)
- [ ] Vertical timeline
- [ ] Seismogram
- [x] [Steamgraph](src/steamgraph.vl.json)

### Correlation

- [x] [Scatterplot](src/scatterplot.vl.json)
- [ ] Column + line timeline
- [ ] Connected scatterplot
- [x] [Bubble](src/bubble.vl.json)
- [ ] XY heatmap

### Deviation

- [x] [Diverging bar](src/bar_diverging.vl.json)
- [ ] Diverging stacked bar
- [ ] Spine
- [ ] Surplus/deficit filled line

### Distribution

- [x] [Histogram](src/histogram.vl.json)
- [x] [Dot plot](src/dot_plot.vl.json)
- [ ] Dot strip plot
- [x] [Barcode plot](src/barcode.vl.json)
- [x] [Boxplot](boxplot.vl.json)
- [ ] Violin plot ([not implemented yet](https://github.com/vega/vega-lite/issues/3442))
- [ ] Population pyramid
- [ ] Cumulative curve
- [ ] Frequency polygons
- [ ] Beeswarm

### Flow

- [ ] Sankey
- [ ] Waterfall
- [ ] Chord
- [ ] Network

### Magnitude

- [x] [Column](src/column.vl.json)
- [x] [Bar](src/bar.vl.json)
- [x] [Paired column](src/column_paired.vl.json)
- [ ] Paired bar
- [ ] Marimekko
- [ ] Proportional symbol
- [ ] Isotype (pictogram)
- [ ] Lollipop
- [ ] Radar
- [ ] Parallel coordinates
- [ ] Bullet
- [ ] Grouped symbol

### Part-to-whole

- [x] [Stacked column/bar](src/column_stacked.vl.json)
- [ ] Marimekko
- [ ] Pie
- [ ] Donut
- [ ] Treemap
- [ ] Voronoi
- [ ] Arc
- [ ] Gridplot
- [ ] Venn
- [ ] Waterfall

### Ranking

- [x] [Ordered bar](src/bar.vl.json)
- [ ] Ordered column
- [ ] Ordered proportional symbol
- [ ] Dot strip plot
- [x] [Slope](src/slope.vl.json)
- [ ] Lollipop
- [ ] Bump

### Spatial

- [x] [Basic choropleth (rate/ratio)](src/choropleth.vl.json)
- [x] [Proportional symbol (count/magnitude)](src/proportional_symbol.vl.json)
- [ ] Flow map
- [ ] Contour map
- [ ] Equalised cartogram
- [ ] Scaled cartogram (value)
- [ ] Dot density
- [ ] Heat map
