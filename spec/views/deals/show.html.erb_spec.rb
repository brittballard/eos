require 'spec_helper'

describe "deals/show" do
  before(:each) do
    @deal = assign(:deal, stub_model(Deal,
      :mils => "9.99",
      :term => "9.99",
      :annual_kwh => "9.99",
      :term_kwh => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
