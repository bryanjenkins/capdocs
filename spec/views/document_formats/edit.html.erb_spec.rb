require 'spec_helper'

describe "document_formats/edit" do
  before(:each) do
    @document_format = assign(:document_format, stub_model(DocumentFormat,
      :name => "MyString",
      :symbol => "MyString"
    ))
  end

  it "renders the edit document_format form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => document_formats_path(@document_format), :method => "post" do
      assert_select "input#document_format_name", :name => "document_format[name]"
      assert_select "input#document_format_symbol", :name => "document_format[symbol]"
    end
  end
end
