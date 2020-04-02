# frozen_string_literal: true

class Word < ApplicationRecord
  has_many :lesson_words
  has_many :word_answers, :dependent => :destroy

  accepts_nested_attributes_for :word_answers
end
