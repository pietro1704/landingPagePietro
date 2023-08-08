# frozen_string_literal: true

class Service < ApplicationRecord
  validates :title, :value, presence: true
  validates :value, numericality: { only_float: true }
  has_rich_text :description

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at title updated_at value rich_text_description]
  end
end
