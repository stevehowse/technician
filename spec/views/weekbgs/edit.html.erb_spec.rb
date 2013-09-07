require 'spec_helper'

describe "weekbgs/edit" do
  before(:each) do
    @weekbg = assign(:weekbg, stub_model(Weekbg))
  end

  it "renders the edit weekbg form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => weekbgs_path(@weekbg), :method => "post" do
    end
  end
end
