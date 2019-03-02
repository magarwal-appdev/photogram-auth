# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo_id   :integer
#  user_id    :integer
#

class Like < ApplicationRecord
    
    validates :user_id, presence: true, uniqueness: 
    { scope: :photo_id, 
    message: "each like should be unique to a photo and user" }
    validates :photo_id, presence: true
    
    belongs_to :user, :class_name => "User", :foreign_key => "user_id"
    belongs_to :photo, :class_name => "Photo", :foreign_key => "photo_id"
end
