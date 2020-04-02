# frozen_string_literal: true

class Admin::WordsController < ApplicationController

  def index
    @word = Word.all
  end

  def new
    @word = Word.new
    3.times {@word.word_answers.build}
  end

  def create
    @word = Word.new word_params
    if @word.save
      flash[:notice] = 'Thanh cong'
      redirect_to @word
    else
      render :new
    end
  end

  # strong params
  private

  def word_params
    params.require(:word).permit :content
  end
end
