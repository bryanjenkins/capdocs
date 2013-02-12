require 'spec_helper'

describe "business_areas/index" do
  before(:each) do
    assign(:business_areas, [
      stub_model(BusinessArea,
        :name => "Name",
        :symbol => "Symbol"
      ),
      stub_model(BusinessArea,
        :name => "Name",
        :symbol => "Symbol"
      )
    ])
  end

  it "renders a list of business_areas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
  end
end
