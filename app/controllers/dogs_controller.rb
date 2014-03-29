class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end


  def show
  end

end
