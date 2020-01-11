class PagesController < ApplicationController
  def home
    @dinosaur = Dinosaur.first_alive
  end

  def attack
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.health -= 1
    @dinosaur.save
    ActionCable.server.broadcast "DinosaurChannel_#{@dinosaur.id}", {health: @dinosaur.health }
  end
end
