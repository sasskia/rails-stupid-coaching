class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = create_answer(params[:question])
  end

  def create_answer(input)
    if input == "I am going to work"
      "Great!"
    elsif input.include? '?'
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
