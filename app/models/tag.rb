class Tag < ApplicationRecord
    has_many :join_table_gossip_tags
    has_many :gossipthps, through: :join_table_gossip_tags
end
