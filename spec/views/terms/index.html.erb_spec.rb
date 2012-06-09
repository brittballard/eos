require 'spec_helper'

describe "terms/index" do
  before(:each) do
    assign(:terms, [
      stub_model(Term,
        :start_month => "",
        :end_month => ""
      ),
      stub_model(Term,
        :start_month => "",
        :end_month => ""
      )
    ])
  end

  it "renders a list of terms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
