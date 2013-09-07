require 'spec_helper'

describe "schoolclasses/show" do
  before(:each) do
    @schoolclass = assign(:schoolclass, stub_model(Schoolclass,
      :classname => "Classname"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Classname/)
  end
end
