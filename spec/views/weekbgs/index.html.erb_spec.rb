require 'spec_helper'

describe "weekbgs/index" do
  before(:each) do
    assign(:weekbgs, [
      stub_model(Weekbg),
      stub_model(Weekbg)
    ])
  end

  it "renders a list of weekbgs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
