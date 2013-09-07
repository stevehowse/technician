require 'spec_helper'

describe "userreqs/new" do
  before(:each) do
    assign(:userreq, stub_model(Userreq).as_new_record)
  end

  it "renders new userreq form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => userreqs_path, :method => "post" do
    end
  end
end
