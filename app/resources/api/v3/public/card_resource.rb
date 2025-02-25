module API
  module V3
    module Public
      class Api::V3::Public::CardResource < JSONAPI::Resource
        immutable

        attributes :stripped_title, :title, :card_type_id, :side_id, :faction_id
        attributes :advancement_requirement, :agenda_points, :base_link, :cost
        attributes :deck_limit, :influence_cost, :influence_limit, :memory_cost
        attributes :minimum_deck_size, :strength, :stripped_text, :text, :trash_cost
        attributes :is_unique, :display_subtypes, :updated_at

        key_type :string

        has_one :side
        has_one :faction
        has_one :card_type
        has_many :card_subtypes
        has_many :printings

        filters :title, :card_type_id, :side_id, :faction_id, :advancement_requirement
        filters :agenda_points, :base_link, :cost, :deck_limit, :influence_cost
        filters :influence_limit, :memory_cost, :minimum_deck_size, :strength, :trash_cost, :is_unique
      end
    end
  end
end
