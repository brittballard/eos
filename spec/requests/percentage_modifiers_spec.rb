require 'spec_helper'

describe "PercentageModifiers" do
  describe "GET /percentage_modifiers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get percentage_modifiers_path
      response.status.should be(200)
    end
  end
end
