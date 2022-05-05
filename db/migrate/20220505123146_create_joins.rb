class CreateJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :joins do |t|
      t.belongs_to :dog, index: true
      t.belongs_to :stroll, index: true
      t.belongs_to :dog_sitter, index:true 
      t.timestamps
    end
  end
end
