# frozen_string_literal: true

require 'csv'

class ImportDataService
  def initialize(file)
    @file = file
  end

  def import
    @counter = 0
    csv = CSV.parse(@file, headers: true)
    csv.each do |row|
      create_school_details(row)
    end
  end

  def create_school_details(row)
    school_detail = SchoolDetail.new
    school_detail.emis = row['emis']
    school_detail.center_no = row['centre_no']
    school_detail.name = row['name']
    school_detail.save
    create_matrics_details(row, school_detail.id)
  end

  def create_matrics_details(row, school_detail_id)
    years = [2014, 2015, 2016]
    years.each do |year|
      matrics_data = MatricsDetail.new
      matrics_data.year = year
      matrics_data.wrote = row["wrote_#{year}"]
      matrics_data.passed = row["passed_#{year}"]
      matrics_data.school_detail_id = school_detail_id
      if matrics_data.save
        next
      else
        @counter += 1
      end
    end
  end
end
