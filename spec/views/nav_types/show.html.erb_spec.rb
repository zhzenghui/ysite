require 'spec_helper'

describe "nav_types/show" do
  before(:each) do
    @nav_type = assign(:nav_type, stub_model(NavType,
      :name => "Name",
      :show_name => "Show Name",
      :pic => "Pic"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Show Name/)
    rendered.should match(/Pic/)
  end
end
