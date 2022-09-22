class CreateLinhasTerminals < ActiveRecord::Migration[7.0]
  def change
    create_table :linhas_terminals, id: false do |t|
      t.integer :linha_id
      t.integer :terminal_id
    end
  end
end
