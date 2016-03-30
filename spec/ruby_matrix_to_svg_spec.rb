require 'spec_helper'

describe RubyMatrixToSvg do

  it "dummy test" do
    expect(1).to eq(1)
  end

  it "creates a svg string" do
    svg_string = RubyMatrixToSvg.matrix_to_svg "image_title", []
    expect(svg_string).to be_a_kind_of(String)
  end

end