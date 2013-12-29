require 'spec_helper'

describe "block_typs/show" do
  before(:each) do
    @block_typ = assign(:block_typ, stub_model(BlockTyp,
      :show_name => "Show Name",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Show Name/)
    rendered.should match(/Name/)
  end
end
