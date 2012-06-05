require 'spec_helper'

describe "deals/index" do
  before(:each) do
    assign(:deals, [
      stub_model(Deal,
        :mils => "9.99",
        :term => "9.99",
        :annual_kwh => "9.99",
        :term_kwh => "9.99"
      ),
      stub_model(Deal,
        :mils => "9.99",
        :term => "9.99",
        :annual_kwh => "9.99",
        :term_kwh => "9.99"
      )
    ])
  end

  it "renders a list of deals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
