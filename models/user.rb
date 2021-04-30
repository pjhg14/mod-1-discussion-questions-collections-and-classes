class User
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def photos
        Photo.all.filter {|photo| photo.user == self}
    end
end