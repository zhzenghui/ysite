require 'spec_helper'

describe "block_typs/edit" do
  before(:each) do
    @block_typ = assign(:block_typ, stub_model(BlockTyp,
      :show_name => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit block_typ form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", block_typ_path(@block_typ), "post" do
      assert_select "input#block_typ_show_name[name=?]", "block_typ[show_name]"
      assert_select "input#block_typ_name[name=?]", "block_typ[name]"
    end
  end
end
