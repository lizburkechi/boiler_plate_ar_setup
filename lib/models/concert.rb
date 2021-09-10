class Concert < ActiveRecord::Base
    has_many :memories
    has_many :users, through: :memories

    def to_s
        self.display_name
    end

    def self.all_display_names
        self.all.map{|concert| {concert.display_name => concert.id}}
    end

    def self.concert_list
        self.all.map{|concert| concert.display_name}
    end
end