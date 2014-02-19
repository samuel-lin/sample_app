require 'spec_helper'

describe "ships/edit" do
  before(:each) do
    @ship = assign(:ship, stub_model(Ship,
      :ename => "MyString",
      :cname => "MyString",
      :flag => "MyString",
      :callsign => "MyString"
    ))
  end

  it "renders the edit ship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ship_path(@ship), "post" do
      assert_select "input#ship_ename[name=?]", "ship[ename]"
      assert_select "input#ship_cname[name=?]", "ship[cname]"
      assert_select "input#ship_flag[name=?]", "ship[flag]"
      assert_select "input#ship_callsign[name=?]", "ship[callsign]"
    end
  end
end
