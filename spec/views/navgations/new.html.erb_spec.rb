require 'spec_helper'

describe "navgations/new" do
  before(:each) do
    assign(:navgation, stub_model(Navgation,
      :app_id => 1,
      :nav_type_id => 1,
      :status => 1
    ).as_new_record)
  end

  it "renders new navgation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", navgations_path, "post" do
      assert_select "input#navgation_app_id[name=?]", "navgation[app_id]"
      assert_select "input#navgation_nav_type_id[name=?]", "navgation[nav_type_id]"
      assert_select "input#navgation_status[name=?]", "navgation[status]"
    end
  end
end
