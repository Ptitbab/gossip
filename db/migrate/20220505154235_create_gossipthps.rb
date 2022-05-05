class CreateGossipthps < ActiveRecord::Migration[7.0]
  def change
    create_table :gossipthps do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
