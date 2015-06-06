json.array!(@posts) do |post|
  json.extract! post, :id, :title, :slug, :body, :category_id
  json.url post_url(post, format: :json)
end
