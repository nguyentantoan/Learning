# frozen_string_literal: true

class Lesson < ApplicationRecord
  has_many :lesson_words, :dependent => :destroy
  has_many :words, through: :lesson_words

  accepts_nested_attributes_for :words
end
