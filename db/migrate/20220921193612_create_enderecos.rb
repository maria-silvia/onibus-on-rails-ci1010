class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.string :rua
      t.integer :numero

      t.timestamps
    end
  end
end
