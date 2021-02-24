# frozen_string_literal: true

class SchoolDetailSerializer
  include JSONAPI::Serializer
  attributes :name, :emis, :center_no, :matrics_details
end
