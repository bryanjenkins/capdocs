require 'spec_helper'

describe "document_formats/index" do
  before(:each) do
    assign(:document_formats, [
      stub_model(DocumentFormat,
        :name => "Name",
        :symbol => "Symbol"
      ),
      stub_model(DocumentFormat,
        :name => "Name",
        :symbol => "Symbol"
      )
    ])
  end

  it "renders a list of document_formats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
  end
end
