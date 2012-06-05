require 'spec_helper'

describe "deals/new" do
  before(:each) do
    assign(:deal, stub_model(Deal,
      :mils => "9.99",
      :term => "9.99",
      :annual_kwh => "9.99",
      :term_kwh => "9.99"
    ).as_new_record)
  end

  it "renders new deal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deals_path, :method => "post" do
      assert_select "input#deal_mils", :name => "deal[mils]"
      assert_select "input#deal_term", :name => "deal[term]"
      assert_select "input#deal_annual_kwh", :name => "deal[annual_kwh]"
      assert_select "input#deal_term_kwh", :name => "deal[term_kwh]"
    end
  end
end
