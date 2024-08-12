class QuestionsController < ApplicationController
  # attr_reader :@answer

  def ask
    if params[:query]
      if params[:query].end_with?("?")
        @answer = 'Silly question, get dressed and go to work!.'
      elsif params[:query] == 'I am going to work'
        @answer = 'Great!'
      else
        @answer = 'I dont care, get dressed and go to work'
      end
    end
  end

  def answer
    ask()
    @answer
  end
end
