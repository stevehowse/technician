require 'spec_helper'

describe "schoolclasses/edit" do
  before(:each) do
    @schoolclass = assign(:schoolclass, stub_model(Schoolclass,
      :classname => "MyString"
    ))
  end

  it "renders the edit schoolclass form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schoolclasses_path(@schoolclass), :method => "post" do
      assert_select "input#schoolclass_classname", :name => "schoolclass[classname]"
    end
  end
end
