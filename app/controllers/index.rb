get '/craigslist' do
  # Look in app/views/index.erb
  erb :index
end

get '/categories/:id/posts' do
@category = Category.find(params[:id])
@posts = Post.where(category_id: params[:id])
erb :show_category
end

get '/posts/:id' do
@post = Post.find(params[:id])
p @post
erb :get_post
end

#need to be able to link new post to the data base
get '/categories/:category_id/posts/new' do
@category = Category.find(params[:category_id])
erb :new_post
end

post '/categories/:category_id/posts' do
  # @post = Post.create(post_title: params[:title], post_body: params[:body], category_id: params[:category])
  @category = Category.find(params[:category])
  @post = Post.create(post_title: params[:title], post_body: params[:body])
  @category.posts << @post
  # @category = Category.find(params[:category])
  # @category.posts.create(post_title: params[:title], post_body: params[:body])
  redirect to("/posts/#{@post.id}")
end

get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  erb :edit_post
end

post '/posts/:id/edit' do
  @post = Post.find(params[:id]
  @post.update_attributes(params[:post])
  redirect to("/posts/#{@post.id}")
end

# post '/update_post/:id' do
#   puts params
#   @post = Post.find(params[:id])
#   @post.update_attributes(params[:post])
#   redirect to("/posts/#{@post.id}")
# end

module CategoryIDTagging
   def self.import
    posts = Post.all
    # turning arrays into objects ('posts' is an instance of the Post class)
    posts.each do |post|
      post.category_id = rand(10)+1
    post.save
    end
  end
end