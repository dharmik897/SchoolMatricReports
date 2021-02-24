# frozen_string_literal: true

class SchoolDetail < ApplicationRecord
  has_many :matrics_details, dependent: :destroy
  accepts_nested_attributes_for :matrics_details,
                                allow_destroy: true,
                                reject_if: :all_blank,
                                update_only: true
end
