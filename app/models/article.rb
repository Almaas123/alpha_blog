class Article < ApplicationRecord
    # Model is used to communicate with database
    # Class Article is a subclass / has inheritance with ApplicationRecord
    belongs_to :user
    validates :title,presence: true,length: {minimum: 6,maximum: 100}
    validates :description,presence: true,length: {minimum:10,maximu:300}

end