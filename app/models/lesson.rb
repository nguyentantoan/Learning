# frozen_string_literal: true

class Lesson < ApplicationRecord
  has_many :lesson_words
  has_many :word_answers, through: :lesson_words
  has_many :words, through: :lesson_words

  accepts_nested_attributes_for :words
end
