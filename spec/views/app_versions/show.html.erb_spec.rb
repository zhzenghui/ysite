require 'spec_helper'

describe "app_versions/show" do
  before(:each) do
    @app_version = assign(:app_version, stub_model(AppVersion,
      :version_number => "Version Number",
      :url => "Url",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Version Number/)
    rendered.should match(/Url/)
    rendered.should match(/MyText/)
  end
end
