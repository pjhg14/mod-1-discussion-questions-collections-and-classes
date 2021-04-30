class Photo
    attr_accessor :user
    attr_reader :comments
    @@all = []

    def initialize
        @comments = []
        @@all << self
    end

    def self.all
        @@all
    end
    
    def make_comment(new_comment)
        @comments << Comment.new(new_comment)
    end
end