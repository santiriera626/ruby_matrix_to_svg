require "ruby_matrix_to_svg/version"

module RubyMatrixToSvg

  # generate the svg string 
  #
  # Example:
  #   >> matrix_to_svg("svg_image_title" , matrix)
  #   => (String)
  #
  # @param title (String) the title of the svg image
  # @param matrix (Array[Array[(String)]]) the colors matrix

  def self.matrix_to_svg title, matrix

    # test if params are correct
    raise "title is invalid" if title == nil || title == ''
    raise "matrix is invalid, must be a matrix (array of arrays) of colors" if matrix.class != Array || matrix[0].class != Array
    
    # open svg tag
    num_rows = matrix.length
    num_cols = matrix[0].length

    svg = "<svg xmlns='http://www.w3.org/2000/svg' version='1.1' width='#{num_cols}' height='#{num_rows}'>"

    # set title
    svg << "<title>#{title}</title>" 

    # background with first color
    svg << "<rect width='100%' height='100%' x='0' y='0' fill='#{matrix[0][0]}' stroke='none' shape-rendering='crispEdges'/>"

    num_rows.times do |row|
      num_cols.times do |col|
        # draw rect if its color its different than background color
        if matrix[row][col] != matrix[0][0]
          svg << "<rect fill='#{matrix[row][col]}' stroke='none' fill-rule='nonzero' x='#{col}' y='#{row}' width='1' height='1' shape-rendering='crispEdges' />"
        end
      end
    end 

    # close svg tag
    svg << "</svg>"

  end

end
