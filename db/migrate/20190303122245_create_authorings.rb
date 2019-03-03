class CreateAuthorings < ActiveRecord::Migration[5.2]
  def change
    create_table :authorings do |t|
      t.references :song, foreign_key: true
      t.references :artist, foreign_key: true
    end
  end
end
