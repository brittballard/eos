require 'spec_helper'

describe "terms/edit" do
  before(:each) do
    @term = assign(:term, stub_model(Term,
      :start_month => "",
      :end_month => ""
    ))
  end

  it "renders the edit term form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => terms_path(@term), :method => "post" do
      assert_select "input#term_start_month", :name => "term[start_month]"
      assert_select "input#term_end_month", :name => "term[end_month]"
    end
  end
end
