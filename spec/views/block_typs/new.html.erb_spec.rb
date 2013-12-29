require 'spec_helper'

describe "block_typs/new" do
  before(:each) do
    assign(:block_typ, stub_model(BlockTyp,
      :show_name => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new block_typ form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", block_typs_path, "post" do
      assert_select "input#block_typ_show_name[name=?]", "block_typ[show_name]"
      assert_select "input#block_typ_name[name=?]", "block_typ[name]"
    end
  end
end
