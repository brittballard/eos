require 'spec_helper'

describe "modifiers/new" do
  before(:each) do
    assign(:modifier, stub_model(Modifier).as_new_record)
  end

  it "renders new modifier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => modifiers_path, :method => "post" do
    end
  end
end
