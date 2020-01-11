class Dinosaur < ApplicationRecord
  before_save :check_life

  def check_life
    self.alive = false if self.health <= 0
  end

  def self.first_alive
    Dinosaur.where(alive: true).first
  end
end
