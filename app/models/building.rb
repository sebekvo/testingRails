class Building < ApplicationRecord
  has_many :rooms

  validates :title, presence: true
  validates :code, presence: true, uniqueness: true


end

