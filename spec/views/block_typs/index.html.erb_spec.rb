require 'spec_helper'

describe "block_typs/index" do
  before(:each) do
    assign(:block_typs, [
      stub_model(BlockTyp,
        :show_name => "Show Name",
        :name => "Name"
      ),
      stub_model(BlockTyp,
        :show_name => "Show Name",
        :name => "Name"
      )
    ])
  end

  it "renders a list of block_typs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Show Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
