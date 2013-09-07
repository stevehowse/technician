require 'spec_helper'

describe "userreqs/edit" do
  before(:each) do
    @userreq = assign(:userreq, stub_model(Userreq))
  end

  it "renders the edit userreq form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => userreqs_path(@userreq), :method => "post" do
    end
  end
end
