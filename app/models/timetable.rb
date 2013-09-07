class Timetable < ActiveRecord::Base
  attr_accessible :schoolclass_id, :day, :period, :pupilnumber, :room_id, :user_id, :week, :weekbg_id
  belongs_to :user
end
