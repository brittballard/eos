require 'spec_helper'

describe "terms/new" do
  before(:each) do
    assign(:term, stub_model(Term,
      :start_month => "",
      :end_month => ""
    ).as_new_record)
  end

  it "renders new term form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => terms_path, :method => "post" do
      assert_select "input#term_start_month", :name => "term[start_month]"
      assert_select "input#term_end_month", :name => "term[end_month]"
    end
  end
end
