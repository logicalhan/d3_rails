# D3_Rails

**D3_Rails** is a small, lightweight gem which allows you to include any 
and all of D3 Javascripts into your 3.1 Rails application, merely by 
including any desired D3 files into your application.js manifest. 

# About D3 

**D3** is a small, free JavaScript library for manipulating HTML documents
based on data. D3 can help you quickly visualize your data as HTML or SVG,
handle interactivity, and incorporate smooth transitions and staged animations
into your pages. You can use D3 as a visualization framework (like Protovis),
or you can use it to build dynamic pages (like jQuery).

# D3 Version

The current release of this gem is using **D3 v=2.8** (though for convenience I have left version 2.7.5 in the gem so you can still include your modules manually since rails will compile your javascripts into one file in the end anyway)
**Last Updated 2-27-2012**

# Included Javascripts
**minified js files are not included, since the rails asset pipeline sorta necessitates the compiling (and likely minifying) your js files for production**

	colorbrewer.js
	d3_csv.js
	d3.js
	d3.chart.js
	d3.geo.js
	d3.geom.js
	d3.layout.js
	d3.time.js
	science.js
	science.lin.js
	science.stats.js

# D3 charting module

** D3 charts can be be included in your rails application by including the following line in your javascripts manifest **

	//= require d3_chart_module

This will include the following javascripts to your application:

	box.js
	bullet.js
	chart.js
	horizon.js
	qq.js
	
### Installation

This gem should work out of the box. All you have to do is add the gem to your Gemfile: 

	gem 'd3_rails'

Then bundle install or update (depending on if you want to upgrade an older version of this gem).
	
	bundle install
	bundle update

### For version 2.7.5 and below
In your assets/javascripts/application.js, you will need to add d3 to your manifest
	
	//= require jquery
	.
	.
	//= require d3 

### For version 2.8.0 and above
	//= require jquery
	.
	.
	//= require d3.v2

### Additional Files (for version 2.7.5 and below)

Bundle installing d3_rails will add the main d3.js file to your application. However, if you require the additional javascripts included by the D3, such as d3.layout.js or d3.chart.js, all you need to do is include the desired javascripts in your javascript manifest in your assets/javascripts/application.js file. 
	
	Ex. 
	
	//= require jquery
	.
	.
	//= require d3
	//= require d3.chart
	etc.. 
	
### Versioning

Version numbers of this gem have been changed as of **2-2-2012**  to reflect the d3 version numbers. 
