require 'faker'

module CategoriesImporter
  def self.import
    10.times do
      Category.create :category   => Faker::Commerce.department
    end
  end
end

module PostsImporter
  def self.import
    10.times do
      Post.create :post_title   => Faker::Commerce.product_name,
                  :post_body    => Faker::Lorem.sentence
    end
  end
end

CategoriesImporter.import
PostsImporter.import