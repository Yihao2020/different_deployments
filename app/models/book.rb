class Book < ApplicationRecord
	validates :title, :author, :price, :published_date, :genre, presence: true
end
