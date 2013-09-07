require 'spec_helper'

describe "timetables/edit" do
  before(:each) do
    @timetable = assign(:timetable, stub_model(Timetable,
      :user_id => 1,
      :week => 1,
      :day => "MyString",
      :period => 1,
      :room_id => 1,
      :class_id => 1,
      :pupilnumber => 1
    ))
  end

  it "renders the edit timetable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => timetables_path(@timetable), :method => "post" do
      assert_select "input#timetable_user_id", :name => "timetable[user_id]"
      assert_select "input#timetable_week", :name => "timetable[week]"
      assert_select "input#timetable_day", :name => "timetable[day]"
      assert_select "input#timetable_period", :name => "timetable[period]"
      assert_select "input#timetable_room_id", :name => "timetable[room_id]"
      assert_select "input#timetable_class_id", :name => "timetable[class_id]"
      assert_select "input#timetable_pupilnumber", :name => "timetable[pupilnumber]"
    end
  end
end
