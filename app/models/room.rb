class Room < ApplicationRecord
  belongs_to :building



  HASH_NAME = {

  }

  @buildings = Building.all


  @buildings.each do |b|
    HASH_NAME["#{b.title}"] = b.id
  end

end
