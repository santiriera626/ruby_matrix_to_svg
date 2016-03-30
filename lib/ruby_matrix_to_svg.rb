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

    # open svg tag
    size = matrix.length
    svg = "<svg xmlns='http://www.w3.org/2000/svg' version='1.1' width='#{size}' height='#{size}'>"

    # set title
    svg << "<title>#{title}</title>" 

    # background with first color
    svg << "<rect width='100%' height='100%' x='0' y='0' fill='#{matrix[0][0]}' stroke='none' shape-rendering='crispEdges'/>"

    size.times do |col|
      size.times do |row|
        # draw rect if its color its different than background color
        if matrix[col][row] != matrix[0][0]
          svg << "<rect fill='#{matrix[col][row]}' stroke='none' fill-rule='nonzero' x='#{col}' y='#{row}' width='1' height='1' shape-rendering='crispEdges' />"
        end
      end
    end 

    # close svg tag
    svg << "</svg>"

  end

end
