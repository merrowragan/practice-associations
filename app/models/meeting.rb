class Meeting < ApplicationRecord
  validates :title, presence: true
  validates :agenda, presence: true
  validates :location, presence: true
  validates :time, presence: true
  validates :agenda, length: {in: 5..200}


  has_many :speaker_meetings
  has_many :speakers, through: :speaker_meetings
end
