require 'spec_helper'

describe "percentage_modifiers/index" do
  before(:each) do
    assign(:percentage_modifiers, [
      stub_model(PercentageModifier),
      stub_model(PercentageModifier)
    ])
  end

  it "renders a list of percentage_modifiers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
