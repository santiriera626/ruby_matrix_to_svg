require 'spec_helper'

describe RubyMatrixToSvg do

  let(:test_matrix){
    [
      ['#fff', '#fff', '#fff'],
      ['#000', '#000', '#000'],
      ['#fff', '#fff', '#fff']
    ]
  }

  let(:test_svg){
    "<svg xmlns='http://www.w3.org/2000/svg' version='1.1' width='3' height='3'><title>image_title</title><rect width='100%' height='100%' x='0' y='0' fill='#fff' stroke='none' shape-rendering='crispEdges'/><rect fill='#000' stroke='none' fill-rule='nonzero' x='1' y='0' width='1' height='1' shape-rendering='crispEdges' /><rect fill='#000' stroke='none' fill-rule='nonzero' x='1' y='1' width='1' height='1' shape-rendering='crispEdges' /><rect fill='#000' stroke='none' fill-rule='nonzero' x='1' y='2' width='1' height='1' shape-rendering='crispEdges' /></svg>"
  }
  
  it "creates a svg string" do
    svg_string = RubyMatrixToSvg.matrix_to_svg "image_title", test_matrix
    expect(svg_string).to eq(test_svg)
  end

end