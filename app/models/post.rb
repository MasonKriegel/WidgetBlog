# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  posttitle      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  #belongs_to :user
  validates_presence_of :posttitle
  validates_presence_of :body
end
