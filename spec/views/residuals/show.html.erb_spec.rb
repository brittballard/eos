require 'spec_helper'

describe "residuals/show" do
  before(:each) do
    @residual = assign(:residual, stub_model(Residual,
      :start_month => "",
      :end_month => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
