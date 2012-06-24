require 'spec_helper'

describe "modifiers/show" do
  before(:each) do
    @modifier = assign(:modifier, stub_model(Modifier))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
