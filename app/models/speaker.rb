class Speaker < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :title, presence: true
  validates :email, presence: true

  has_many :speaker_meetings
  has_many :meetings, through: :speaker_meetings
end
