require 'spec_helper'

describe "percentage_modifiers/new" do
  before(:each) do
    assign(:percentage_modifier, stub_model(PercentageModifier).as_new_record)
  end

  it "renders new percentage_modifier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => percentage_modifiers_path, :method => "post" do
    end
  end
end
