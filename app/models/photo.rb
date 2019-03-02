# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  caption    :text
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Photo < ApplicationRecord
    
    validates :user_id, presence: true
    
    belongs_to :user, :class_name => "User", :foreign_key => "user_id"
    has_many :likes, :class_name => "Like", :foreign_key => "photo_id"
    has_many :comments, :class_name => "Comment", :foreign_key => "photo_id"
    has_many :fans, :through => :likes, :source => :user

end
