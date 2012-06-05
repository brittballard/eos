require 'spec_helper'

describe "deals/edit" do
  before(:each) do
    @deal = assign(:deal, stub_model(Deal,
      :mils => "9.99",
      :term => "9.99",
      :annual_kwh => "9.99",
      :term_kwh => "9.99"
    ))
  end

  it "renders the edit deal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deals_path(@deal), :method => "post" do
      assert_select "input#deal_mils", :name => "deal[mils]"
      assert_select "input#deal_term", :name => "deal[term]"
      assert_select "input#deal_annual_kwh", :name => "deal[annual_kwh]"
      assert_select "input#deal_term_kwh", :name => "deal[term_kwh]"
    end
  end
end
