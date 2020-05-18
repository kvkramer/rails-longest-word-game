class GamesController < ApplicationController
def initialize
  @letters = 9.times.map { [*('a'..'z')].sample }
end

def new
  # @return = params[:word]
end

def score
  @input_letters = []
  params[:word].chars.each do |letter|
    @input_letters << letter
  end
  if @letters.include? @input_letters
    @score = 5
  else
    @score = 'Not contained in selection'
  end
end

end
