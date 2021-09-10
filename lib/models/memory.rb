class Memory < ActiveRecord::Base
   belongs_to :user
   belongs_to :concert

   def to_s
      self.title
   end

end