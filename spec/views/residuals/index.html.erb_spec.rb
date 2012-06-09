require 'spec_helper'

describe "residuals/index" do
  before(:each) do
    assign(:residuals, [
      stub_model(Residual,
        :start_month => "",
        :end_month => ""
      ),
      stub_model(Residual,
        :start_month => "",
        :end_month => ""
      )
    ])
  end

  it "renders a list of residuals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
