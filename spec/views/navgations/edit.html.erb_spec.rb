require 'spec_helper'

describe "navgations/edit" do
  before(:each) do
    @navgation = assign(:navgation, stub_model(Navgation,
      :app_id => 1,
      :nav_type_id => 1,
      :status => 1
    ))
  end

  it "renders the edit navgation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", navgation_path(@navgation), "post" do
      assert_select "input#navgation_app_id[name=?]", "navgation[app_id]"
      assert_select "input#navgation_nav_type_id[name=?]", "navgation[nav_type_id]"
      assert_select "input#navgation_status[name=?]", "navgation[status]"
    end
  end
end
