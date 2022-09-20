class CreateLinhas < ActiveRecord::Migration[7.0]
  def change
    create_table :linhas do |t|
      t.string :nome
      t.integer :codigo
      t.belongs_to :tipo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
