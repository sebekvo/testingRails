class Room < ApplicationRecord
  belongs_to :building
  has_many :lessons


  HASH_NAME = {

  }

  @buildings = Building.all


  @buildings.each do |b|
    HASH_NAME["#{b.title}"] = b.id
  end

end
