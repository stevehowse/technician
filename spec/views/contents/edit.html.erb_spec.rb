require 'spec_helper'

describe "contents/edit" do
  before(:each) do
    @content = assign(:content, stub_model(Content,
      :user_id => 1,
      :week => 1,
      :day => "MyString",
      :period => 1,
      :room_id => 1,
      :content => 1
    ))
  end

  it "renders the edit content form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contents_path(@content), :method => "post" do
      assert_select "input#content_user_id", :name => "content[user_id]"
      assert_select "input#content_week", :name => "content[week]"
      assert_select "input#content_day", :name => "content[day]"
      assert_select "input#content_period", :name => "content[period]"
      assert_select "input#content_room_id", :name => "content[room_id]"
      assert_select "input#content_content", :name => "content[content]"
    end
  end
end
