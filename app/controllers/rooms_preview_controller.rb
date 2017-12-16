class RoomsPreviewController < ApplicationController

  def show
    @lessons = Lesson.where(:room_id => params[:id])
    @lessonsCount = @lessons.count
  end

end
