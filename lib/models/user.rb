class User < ActiveRecord::Base
    has_many :memories
    has_many :concerts, through: :memories

    def self.find_by_email email
        user = find_by email: email
        if user
            puts "Welcome back, #{user.first_name}!"
        else
            puts "Cannot find a user for that email address."
            welcome
        end
    end

end