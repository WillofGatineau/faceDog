class Dog < ActiveRecord::Base
  belongs_to :user

  validates :name, length: {in: 3..20}, format: {
    with: %r{\A[a-zA-Z]([a-zA-Z]|\s{1}[a-zA-Z])+\z},
    message: "Sorry, a dog may only have alphabetical letters and may not start nor end with a white space."
  } 

  validates :age, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than: 20}  

  validates :image, format: {
    with: %r{\w(\w|\/\w)+.(jpeg|png|jpg|bmp|gif)},
    message: "image url is not well formatted."
  }
  
end


