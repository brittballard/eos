require 'spec_helper'

describe "date_modifiers/show" do
  before(:each) do
    @date_modifier = assign(:date_modifier, stub_model(DateModifier))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
