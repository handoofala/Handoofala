class CreateModelBasics < ActiveRecord::Migration
  def change
    create_table :model_basics do |t|
      t.string :title
      t.text :post
      t.datetime :date

      t.timestamps
    end
  end
end
