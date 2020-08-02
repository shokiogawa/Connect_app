class CreateLoads < ActiveRecord::Migration[5.2]
  def change
    create_table :loads do |t|
      t.string :content
      t.string :p
      t.references :parent, foreign_key: true

      t.timestamps
    end
  end
end
