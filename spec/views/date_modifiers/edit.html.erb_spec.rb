require 'spec_helper'

describe "date_modifiers/edit" do
  before(:each) do
    @date_modifier = assign(:date_modifier, stub_model(DateModifier))
  end

  it "renders the edit date_modifier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => date_modifiers_path(@date_modifier), :method => "post" do
    end
  end
end
