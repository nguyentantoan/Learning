# frozen_string_literal: true

class Word < ApplicationRecord
  has_many :word_answer,:dependent => :destroy
  has_many :lesson, through: :word
  has_many :lesson_word,:dependent => :destroy

  accepts_nested_attributes_for :word_answer
end
