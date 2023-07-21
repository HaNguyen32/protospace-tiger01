class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :prototype

    validatable :comment, presence :true
end
