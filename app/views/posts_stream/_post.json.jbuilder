json.content post.content
json.photo_url post.cat_photo_url
json.created_at post.created_at
json.author do
  json.name post.user.name
end unless post.user.nil?
