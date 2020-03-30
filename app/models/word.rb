# frozen_string_literal: true

class Word < ApplicationRecord
  has_many :word_answers,through: :lesson_words
  has_many :lesson_words

  accepts_nested_attributes_for :word_answers
end
