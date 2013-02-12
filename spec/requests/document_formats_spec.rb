require 'spec_helper'

describe "DocumentFormats" do
  describe "GET /document_formats" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get document_formats_path
      response.status.should be(200)
    end
  end
end
