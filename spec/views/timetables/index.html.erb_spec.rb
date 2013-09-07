require 'spec_helper'

describe "timetables/index" do
  before(:each) do
    assign(:timetables, [
      stub_model(Timetable,
        :user_id => 1,
        :week => 2,
        :day => "Day",
        :period => 3,
        :room_id => 4,
        :class_id => 5,
        :pupilnumber => 6
      ),
      stub_model(Timetable,
        :user_id => 1,
        :week => 2,
        :day => "Day",
        :period => 3,
        :room_id => 4,
        :class_id => 5,
        :pupilnumber => 6
      )
    ])
  end

  it "renders a list of timetables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Day".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
