module API
  module V3
    module Public
      class Api::V3::Public::CardTypeResource < JSONAPI::Resource
        primary_key :code
        attributes :code, :name, :updated_at
        key_type :string
      end
    end
  end
end
