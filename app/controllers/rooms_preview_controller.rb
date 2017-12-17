class RoomsPreviewController < ApplicationController

  def show
    @thisRoom = Room.find(params[:id])
    @lessons = Lesson.where(:room_id => params[:id])
    @lessonsCount = @lessons.count
  end

end
