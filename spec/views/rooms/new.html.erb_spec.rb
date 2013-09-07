require 'spec_helper'

describe "rooms/new" do
  before(:each) do
    assign(:room, stub_model(Room,
      :roomname => "MyString"
    ).as_new_record)
  end

  it "renders new room form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rooms_path, :method => "post" do
      assert_select "input#room_roomname", :name => "room[roomname]"
    end
  end
end
