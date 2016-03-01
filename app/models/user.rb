class User < ActiveRecord::Base
    has_many :visits, through: :locations, source: 'location'
    has_many :owned_locations, class_name: 'Location'
    has_many :participants, through: :events, source: 'event'
end