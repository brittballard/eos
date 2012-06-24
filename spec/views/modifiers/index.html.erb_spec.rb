require 'spec_helper'

describe "modifiers/index" do
  before(:each) do
    assign(:modifiers, [
      stub_model(Modifier),
      stub_model(Modifier)
    ])
  end

  it "renders a list of modifiers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
