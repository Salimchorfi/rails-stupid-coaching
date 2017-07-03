class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    question = @question.include? "?"
    if question == true
      @answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work right now!"
      @answer = "Good!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def ask
    @question = params[:query]
  end
end
