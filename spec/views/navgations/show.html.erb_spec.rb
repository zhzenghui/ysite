require 'spec_helper'

describe "navgations/show" do
  before(:each) do
    @navgation = assign(:navgation, stub_model(Navgation,
      :app_id => 1,
      :nav_type_id => 2,
      :status => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
