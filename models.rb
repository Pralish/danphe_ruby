# Model the following entity relation requirement.
# A system has many shops. A shop has many products, which can fall into one or many categories. The products can have different prices on different dates.
# The solution to this can be an ER diagram with crow-foot notation, or it can be a text file that lists relevant classes and has active record relation statements.

class System < ActiveRecord::Base
  has_many :shops, dependent: :destroy
end

class Shop < ActiveRecord::Base
  belongs_to :system
  has_many :products, dependent: :destroy
end

class Product < ActiveRecord::Base
  belongs_to :shop
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories

  has_many :price_histories, dependent: :destroy
end

class Category < ActiveRecord::Base
  has_many :product_categories, dependent: :destroy
  has_many :products, through: :product_categories
end

class ProductCategory < ActiveRecord::Base
  belongs_to :product
  belongs_to :category
end

class PriceHistory < ActiveRecord::Base
  belongs_to :product
end