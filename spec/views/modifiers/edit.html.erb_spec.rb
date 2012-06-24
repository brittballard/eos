require 'spec_helper'

describe "modifiers/edit" do
  before(:each) do
    @modifier = assign(:modifier, stub_model(Modifier))
  end

  it "renders the edit modifier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => modifiers_path(@modifier), :method => "post" do
    end
  end
end
