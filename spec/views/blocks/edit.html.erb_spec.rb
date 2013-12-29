require 'spec_helper'

describe "blocks/edit" do
  before(:each) do
    @block = assign(:block, stub_model(Block,
      :block_type_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit block form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", block_path(@block), "post" do
      assert_select "input#block_block_type_id[name=?]", "block[block_type_id]"
      assert_select "input#block_user_id[name=?]", "block[user_id]"
    end
  end
end
