require 'spec_helper'

describe "ships/index" do
  before(:each) do
    assign(:ships, [
      stub_model(Ship,
        :ename => "Ename",
        :cname => "Cname",
        :flag => "Flag",
        :callsign => "Callsign"
      ),
      stub_model(Ship,
        :ename => "Ename",
        :cname => "Cname",
        :flag => "Flag",
        :callsign => "Callsign"
      )
    ])
  end

  it "renders a list of ships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ename".to_s, :count => 2
    assert_select "tr>td", :text => "Cname".to_s, :count => 2
    assert_select "tr>td", :text => "Flag".to_s, :count => 2
    assert_select "tr>td", :text => "Callsign".to_s, :count => 2
  end
end
