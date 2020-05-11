class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :url
      t.string :kind
      t.string :classification

      t.timestamps
    end
  end
end
