# frozen_string_literal: true

class SchoolDetailsController < ApplicationController
  def index
    @schools = SchoolDetail.all
  end
end
