json.extract! review, :id, :author, :rating, :content, :burger_id, :created_at, :updated_at
json.url review_url(review, format: :json)
