class CreateTaggings < ActiveRecord::Migration[7.0]
  def change
    create_table :taggings do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :gossipthp, null: false, foreign_key: true

      t.timestamps
    end

    add_reference :tags, :tagging, foreign_key: true
    add_reference :gossipthps, :tagging, foreign_key: true
  end
end
