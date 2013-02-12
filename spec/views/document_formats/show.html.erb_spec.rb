require 'spec_helper'

describe "document_formats/show" do
  before(:each) do
    @document_format = assign(:document_format, stub_model(DocumentFormat,
      :name => "Name",
      :symbol => "Symbol"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Symbol/)
  end
end
