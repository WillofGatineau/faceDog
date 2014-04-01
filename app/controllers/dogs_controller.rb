class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
  end

  def new
    @dog = Dog.new
    @colors = [
      ['White', 'white'], ['Black', 'black'],
      ['Brown', 'brown'], ['Beige', 'beige'],
    ]

    @ages = Array.new(); 

    for i in 0..20
      @ages << [i, i]  
    end
  end

  def create

    if @dog= Dog.create(dog_params)
       #success
    else
      #error handling
    end  
        
  end


  private

  def dog_params
    params.require(:dog).permit(:name, :age, :image, :race, :color, :decription, :gender)
  end

end
