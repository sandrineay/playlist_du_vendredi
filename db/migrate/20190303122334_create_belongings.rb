class CreateBelongings < ActiveRecord::Migration[5.2]
  def change
    create_table :belongings do |t|
      t.references :playlist, foreign_key: true
      t.references :category, foreign_key: true
      t.references :song, foreign_key: true
    end
  end
end
