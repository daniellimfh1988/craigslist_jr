

# #there is a column within posts "category_id"...need to randomly tag the categories via category ID to this column

# # we need to  be able to connect the posts to a designated ID when called upon

# module Getposts
#   def self.Getpost
#     posts = Post.all

#     posts.each do |posts|
#       post.category_id ==
#   end
# end


# module CategoryIDTagging
#    def self.import
#     posts = Post.all
#     # turning arrays into objects ('posts' is an instance of the Post class)
#     posts.each do |post|
#       post.category_id = rand(10)+1
#     post.save
#     end
#   end
# end