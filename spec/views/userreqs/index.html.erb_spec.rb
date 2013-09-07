require 'spec_helper'

describe "userreqs/index" do
  before(:each) do
    assign(:userreqs, [
      stub_model(Userreq),
      stub_model(Userreq)
    ])
  end

  it "renders a list of userreqs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
