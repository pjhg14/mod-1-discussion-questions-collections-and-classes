class Comment
    attr_reader :comment
    @@all = []

    def initialize(comment)
        @comment = comment

        @@all << self
    end

    def self.all
        @@all
    end
end