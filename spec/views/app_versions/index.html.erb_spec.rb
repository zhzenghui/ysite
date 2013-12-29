require 'spec_helper'

describe "app_versions/index" do
  before(:each) do
    assign(:app_versions, [
      stub_model(AppVersion,
        :version_number => "Version Number",
        :url => "Url",
        :description => "MyText"
      ),
      stub_model(AppVersion,
        :version_number => "Version Number",
        :url => "Url",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of app_versions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Version Number".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
