# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo_id   :integer
#  user_id    :integer
#

class Comment < ApplicationRecord
    
    validates :user_id, :photo_id, :body, presence: true
    
    belongs_to :user, :class_name => "User", :foreign_key => "user_id"
    belongs_to :photo, :class_name => "Photo", :foreign_key => "photo_id"
end
