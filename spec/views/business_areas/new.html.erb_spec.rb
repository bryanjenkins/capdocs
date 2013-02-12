require 'spec_helper'

describe "business_areas/new" do
  before(:each) do
    assign(:business_area, stub_model(BusinessArea,
      :name => "MyString",
      :symbol => "MyString"
    ).as_new_record)
  end

  it "renders new business_area form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => business_areas_path, :method => "post" do
      assert_select "input#business_area_name", :name => "business_area[name]"
      assert_select "input#business_area_symbol", :name => "business_area[symbol]"
    end
  end
end
