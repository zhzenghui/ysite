require 'spec_helper'

describe "nav_types/new" do
  before(:each) do
    assign(:nav_type, stub_model(NavType,
      :name => "MyString",
      :show_name => "MyString",
      :pic => "MyString"
    ).as_new_record)
  end

  it "renders new nav_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", nav_types_path, "post" do
      assert_select "input#nav_type_name[name=?]", "nav_type[name]"
      assert_select "input#nav_type_show_name[name=?]", "nav_type[show_name]"
      assert_select "input#nav_type_pic[name=?]", "nav_type[pic]"
    end
  end
end
