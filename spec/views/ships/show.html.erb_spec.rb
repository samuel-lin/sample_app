require 'spec_helper'

describe "ships/show" do
  before(:each) do
    @ship = assign(:ship, stub_model(Ship,
      :ename => "Ename",
      :cname => "Cname",
      :flag => "Flag",
      :callsign => "Callsign"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ename/)
    rendered.should match(/Cname/)
    rendered.should match(/Flag/)
    rendered.should match(/Callsign/)
  end
end
