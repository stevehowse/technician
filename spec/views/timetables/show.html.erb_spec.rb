require 'spec_helper'

describe "timetables/show" do
  before(:each) do
    @timetable = assign(:timetable, stub_model(Timetable,
      :user_id => 1,
      :week => 2,
      :day => "Day",
      :period => 3,
      :room_id => 4,
      :class_id => 5,
      :pupilnumber => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Day/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
  end
end
