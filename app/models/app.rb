class App < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  
  has_many :block
  has_many :app_version
  has_many :navgation 
    
end
