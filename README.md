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

The current release of this gem is using **D3 v=2.5.0**

### Installation

This gem should work out of the box. All you have to do is add the gem to your Gemfile: 

	gem 'd3_rails'

Then bundle install or update (depending on if you want to upgrade an older version of this gem).
	
	bundle install
	bundle update
	
In your assets/javascripts/application.js, you will need to add d3 to your manifest:
	
	//= require jquery
	.
	.
	//= require d3

### Additional Files

Bundle installing d3_rails will add the main d3.js file to your application. However, if you require the additional javascripts included by the D3, such as d3.layout.js or d3.chart.js, all you need to do is include the desired javascripts in your javascript manifest in your assets/javascripts/application.js file. 
	
	Ex. 
	
	//= require jquery
	.
	.
	//= require d3
	//= require d3.chart
	etc.. 
	