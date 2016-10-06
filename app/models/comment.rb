class Comment < ApplicationRecord
  belongs_to :post
  resourcify
end
