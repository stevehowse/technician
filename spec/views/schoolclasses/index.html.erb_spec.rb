require 'spec_helper'

describe "schoolclasses/index" do
  before(:each) do
    assign(:schoolclasses, [
      stub_model(Schoolclass,
        :classname => "Classname"
      ),
      stub_model(Schoolclass,
        :classname => "Classname"
      )
    ])
  end

  it "renders a list of schoolclasses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Classname".to_s, :count => 2
  end
end
