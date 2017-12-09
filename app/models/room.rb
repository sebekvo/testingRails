class Room < ApplicationRecord
  belongs_to :building
  has_many :lessons


  BUILDING_NAMES = {}
  buildings = Building.all
  buildings.each do |b|
    BUILDING_NAMES["#{b.title}"] = b.id
  end

end
