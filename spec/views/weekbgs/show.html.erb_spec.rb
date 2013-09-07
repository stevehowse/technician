require 'spec_helper'

describe "weekbgs/show" do
  before(:each) do
    @weekbg = assign(:weekbg, stub_model(Weekbg))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
