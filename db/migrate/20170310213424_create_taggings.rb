class CreateTaggings < ActiveRecord::Migration[5.0]
  def change
    create_table :taggings do |t|
      t.integer :company_id
      t.integer :category_tag_id

      t.timestamps
    end
  end
end
