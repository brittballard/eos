require 'spec_helper'

describe "residuals/new" do
  before(:each) do
    assign(:residual, stub_model(Residual,
      :start_month => "",
      :end_month => ""
    ).as_new_record)
  end

  it "renders new residual form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => residuals_path, :method => "post" do
      assert_select "input#residual_start_month", :name => "residual[start_month]"
      assert_select "input#residual_end_month", :name => "residual[end_month]"
    end
  end
end
