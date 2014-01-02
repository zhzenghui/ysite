class Block < ActiveRecord::Base
  belongs_to :app
  belongs_to :block_type
  
  
  
end
