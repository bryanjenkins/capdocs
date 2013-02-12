require 'spec_helper'

describe "business_areas/show" do
  before(:each) do
    @business_area = assign(:business_area, stub_model(BusinessArea,
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
