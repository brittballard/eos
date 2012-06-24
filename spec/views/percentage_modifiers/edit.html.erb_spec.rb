require 'spec_helper'

describe "percentage_modifiers/edit" do
  before(:each) do
    @percentage_modifier = assign(:percentage_modifier, stub_model(PercentageModifier))
  end

  it "renders the edit percentage_modifier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => percentage_modifiers_path(@percentage_modifier), :method => "post" do
    end
  end
end
