require 'spec_helper'

describe "percentage_modifiers/show" do
  before(:each) do
    @percentage_modifier = assign(:percentage_modifier, stub_model(PercentageModifier))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
