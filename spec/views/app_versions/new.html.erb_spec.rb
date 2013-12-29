require 'spec_helper'

describe "app_versions/new" do
  before(:each) do
    assign(:app_version, stub_model(AppVersion,
      :version_number => "MyString",
      :url => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new app_version form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", app_versions_path, "post" do
      assert_select "input#app_version_version_number[name=?]", "app_version[version_number]"
      assert_select "input#app_version_url[name=?]", "app_version[url]"
      assert_select "textarea#app_version_description[name=?]", "app_version[description]"
    end
  end
end
