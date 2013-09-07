require 'spec_helper'

describe "schoolclasses/new" do
  before(:each) do
    assign(:schoolclass, stub_model(Schoolclass,
      :classname => "MyString"
    ).as_new_record)
  end

  it "renders new schoolclass form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schoolclasses_path, :method => "post" do
      assert_select "input#schoolclass_classname", :name => "schoolclass[classname]"
    end
  end
end
