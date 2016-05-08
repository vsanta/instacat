class PostCreator

  def create(post_params, current_user)
    post = Post.new(content: post_params[:content])
    post.cat_photo = post_params[:cat_photo]
    post.user = current_user
    post.save!
    post
  end
end
