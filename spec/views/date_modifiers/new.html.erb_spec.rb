require 'spec_helper'

describe "date_modifiers/new" do
  before(:each) do
    assign(:date_modifier, stub_model(DateModifier).as_new_record)
  end

  it "renders new date_modifier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => date_modifiers_path, :method => "post" do
    end
  end
end
