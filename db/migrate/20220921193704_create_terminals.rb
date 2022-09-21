class CreateTerminals < ActiveRecord::Migration[7.0]
  def change
    create_table :terminals do |t|
      t.string :nome
      t.belongs_to :endereco, null: false, foreign_key: true

      t.timestamps
    end
  end
end
