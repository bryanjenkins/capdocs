require 'spec_helper'

describe "business_areas/edit" do
  before(:each) do
    @business_area = assign(:business_area, stub_model(BusinessArea,
      :name => "MyString",
      :symbol => "MyString"
    ))
  end

  it "renders the edit business_area form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => business_areas_path(@business_area), :method => "post" do
      assert_select "input#business_area_name", :name => "business_area[name]"
      assert_select "input#business_area_symbol", :name => "business_area[symbol]"
    end
  end
end
