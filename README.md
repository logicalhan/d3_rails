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

The current release of this gem is using **D3 v=3.0.6** 
**Last Updated 2-10-2013**

# Included Javascripts

	d3.v3.js
	d3.v3.min.js

### Installation

This gem should work out of the box. All you have to do is add the gem to your Gemfile: 

	gem 'd3_rails'

Then bundle install or update (depending on if you want to upgrade an older version of this gem).
	
	bundle install
	bundle update

For use with the asset pipeline, you can include the d3 javascript in your rails application by merely including the following line in your application.js manifest

	//= require jquery
	.
	.
	//= require d3.v3

	
### Versioning

Version numbers of this gem have been changed as of **2-2-2012**  to reflect the d3 version numbers. 

### Extraneous files

As of version 3.0.0, the extraneous files from legacy version of d3 have been removed.
