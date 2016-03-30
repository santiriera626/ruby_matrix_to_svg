# RubyMatrixToSvg

[![Build Status](https://travis-ci.org/santiriera626/ruby_matrix_to_svg.svg?branch=master)](https://travis-ci.org/santiriera626/ruby_matrix_to_svg)
[![Coverage Status](https://coveralls.io/repos/github/santiriera626/ruby_matrix_to_svg/badge.svg?branch=master)](https://coveralls.io/github/santiriera626/ruby_matrix_to_svg?branch=master)
[![Code Climate](https://codeclimate.com/github/santiriera626/ruby_matrix_to_svg/badges/gpa.svg)](https://codeclimate.com/github/santiriera626/ruby_matrix_to_svg)
[![security](https://hakiri.io/github/santiriera626/ruby_matrix_to_svg/master.svg)](https://hakiri.io/github/santiriera626/ruby_matrix_to_svg/master)

RubyMatrixToSvg is a pure Ruby library without any dependencies that allows you to create a svg string from a matrix of colors that you've defined.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby_matrix_to_svg'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_matrix_to_svg

## Usage

Create a svg matrix string from your matrix filled with colors.
  
svg_matrix = RubyMatrixToSvg.matrix_to_svg("ruby_matrix_title", matrix)
  
*where matrix is the Array of columns and rows filled with colours.

Returned String can be used in a simple way in your HTML document settting a size for your image
    
    <img src="data:image/svg+xml;utf8, <%= raw(svg_matrix) %>" width="200px">

##Example

matrix = [
    ['#fff', '#fff', '#fff'],
    ['#000', '#000', '#000'],
    ['#fff', '#fff', '#fff'],
    ['#000', '#000', '#000']
  ]

matrix_string = RubyMatrixToSvg.matrix_to_svg("ruby_matrix_title", matrix)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/santiriera626/ruby_matrix_to_svg. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
