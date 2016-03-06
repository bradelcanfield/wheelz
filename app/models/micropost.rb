class Micropost < ActiveRecord::Base
  belongs_to :commuter
  default_scope -> { order(created_at: :desc) }
  validates :commuter_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
