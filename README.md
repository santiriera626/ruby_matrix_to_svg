# RubyMatrixToSvg

RubyMatrixToSvg is a pure Ruby library without any dependencies that allows you to create a svg string from your matrix.

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

Create a random svg image saved on the file system.
  
  svg_matrix = RubyMatrixToSvg.matrix_to_svg("ruby_matrix_title", matrix)
  
  *where matrix is the Array of columns and rows.

Returned String can be used in a simple way in your HTML document settting a size for your image
    
    <img src="data:image/svg+xml;utf8, <%= raw(svg_matrix) %>" width="200px">

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/santiriera626/ruby_matrix_to_svg. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
