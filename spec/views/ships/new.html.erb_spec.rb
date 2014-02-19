require 'spec_helper'

describe "ships/new" do
  before(:each) do
    assign(:ship, stub_model(Ship,
      :ename => "MyString",
      :cname => "MyString",
      :flag => "MyString",
      :callsign => "MyString"
    ).as_new_record)
  end

  it "renders new ship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ships_path, "post" do
      assert_select "input#ship_ename[name=?]", "ship[ename]"
      assert_select "input#ship_cname[name=?]", "ship[cname]"
      assert_select "input#ship_flag[name=?]", "ship[flag]"
      assert_select "input#ship_callsign[name=?]", "ship[callsign]"
    end
  end
end
