require 'spec_helper'

describe "nav_types/index" do
  before(:each) do
    assign(:nav_types, [
      stub_model(NavType,
        :name => "Name",
        :show_name => "Show Name",
        :pic => "Pic"
      ),
      stub_model(NavType,
        :name => "Name",
        :show_name => "Show Name",
        :pic => "Pic"
      )
    ])
  end

  it "renders a list of nav_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Show Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pic".to_s, :count => 2
  end
end
