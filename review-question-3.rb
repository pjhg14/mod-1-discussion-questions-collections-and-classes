# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require_relative "./models/comment"
require_relative "./models/user"
require_relative "./models/photo"

# user -< photo -< comments
# comment >- photo


sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
puts sandwich_photo.user.name
# => "Sophie"
puts sophie.photos
# => [#<Photo:0x00007fae2880b370>]


puts sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
puts sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

puts Comment.all
#=> [#<Comment:0x00007fae28043700>]

# Testing
photo2 = Photo.new
taby = User.new("Taby")
photo2.user = taby

photo2.make_comment("test comment")
puts "single comment"
puts photo2.comments

puts "all comments"
puts Comment.all