require 'spec_helper'

describe "userreqs/show" do
  before(:each) do
    @userreq = assign(:userreq, stub_model(Userreq))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
