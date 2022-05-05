class Join < ApplicationRecord
   belongs_to :stroll
   belongs_to :dog
   belongs_to :dog_sitter
end
