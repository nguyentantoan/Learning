# frozen_string_literal: true

class LessonWord < ApplicationRecord
  belongs_to :lesson
  belongs_to :word
  belongs_to :word_answer
end
