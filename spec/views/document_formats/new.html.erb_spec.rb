require 'spec_helper'

describe "document_formats/new" do
  before(:each) do
    assign(:document_format, stub_model(DocumentFormat,
      :name => "MyString",
      :symbol => "MyString"
    ).as_new_record)
  end

  it "renders new document_format form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => document_formats_path, :method => "post" do
      assert_select "input#document_format_name", :name => "document_format[name]"
      assert_select "input#document_format_symbol", :name => "document_format[symbol]"
    end
  end
end
