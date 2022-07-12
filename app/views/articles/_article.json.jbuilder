json.extract! article, :id, :title, :body, :article_type_id, :created_at, :updated_at
json.url article_url(article, format: :json)
