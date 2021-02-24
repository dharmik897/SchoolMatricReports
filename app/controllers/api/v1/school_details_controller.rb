# frozen_string_literal: true

module Api
  module V1
    class SchoolDetailsController < BaseApiController
      before_action :set_school_detail, only: %i[show]

      def index
        school_details = SchoolDetail.all
        render_success({ school_details: serialized_json(school_details) })
      end

      # GET /school_details/1 or /school_details/1.json
      def show; end

      # GET /school_details/new
      def new
        @school_detail = SchoolDetail.new
      end

      def create
        school_detail = SchoolDetail.new(school_detail_params)
        if school_detail.save
          render_success({ school: serialized_json(school_detail) },
                         'School details added successfully.')
        else
          render_error(school_detail)
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_school_detail
        @school_detail = SchoolDetail.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def school_detail_params
        params.require(:school_detail).permit(:name, :emis, :center_no,
          matrics_details_attributes: [
            :year, :wrote, :passed
        ])
      end

      def serialized_json(details)
        SchoolDetailSerializer.new(details).serializable_hash.to_json
      end
    end
  end
end
