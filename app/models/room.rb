class Room < ApplicationRecord
  belongs_to :building
  has_many :lessons

  validates :title, presence: true
  validates :code, presence: true, uniqueness: true
  validates :building_id, presence: true

  BUILDING_NAMES = {}
  buildings = Building.all
  buildings.each do |b|
    BUILDING_NAMES["#{b.title}"] = b.id
  end

end
