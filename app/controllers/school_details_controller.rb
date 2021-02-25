# frozen_string_literal: true

class SchoolDetailsController < ApplicationController
  def index
    @schools = SchoolDetail.all
  end

  def year_and_school
    @school = SchoolDetail.find_by(id: params[:id])
  end

  def compare_schools
    @school1 = SchoolDetail.find_by(id: params[:school_one])
    @school2 = SchoolDetail.find_by(id: params[:school_two])
  end
end
