class User < ApplicationRecord
    belongs_to :situation
    has_many :parents
end
