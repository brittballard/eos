require 'spec_helper'

describe "date_modifiers/index" do
  before(:each) do
    assign(:date_modifiers, [
      stub_model(DateModifier),
      stub_model(DateModifier)
    ])
  end

  it "renders a list of date_modifiers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
