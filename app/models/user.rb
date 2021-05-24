class User < ActiveRecord::Base

    has_many :rides
    has_many :attractions, through: :rides

    has_secure_password

    def mood
        if happiness >= nausea
            "happy"
        elsif nausea > happiness
            "sad"
        end
    end


end
