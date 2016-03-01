class Event < ActiveRecord::Base
    has_and_belongs_to_many :locations
    has_many :participants, through: :users, source: 'user'
    has_one :owner
end