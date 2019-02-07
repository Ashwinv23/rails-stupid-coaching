# frozen_string_literal: true

# controller which handles question(ask) and answer
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = params[:ask] #:ask here refers to name="ask" in ask.html.erb

    # have a single assignment to the variable when using multiple if statements
    @answer = if @answer == 'I am going to work'
                'Great!'
              elsif @answer.include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
