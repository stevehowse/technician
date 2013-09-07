require 'spec_helper'

describe "schools/new" do
  before(:each) do
    assign(:school, stub_model(School,
      :schoolname => "MyString",
      :periods => 1
    ).as_new_record)
  end

  it "renders new school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schools_path, :method => "post" do
      assert_select "input#school_schoolname", :name => "school[schoolname]"
      assert_select "input#school_periods", :name => "school[periods]"
    end
  end
end
