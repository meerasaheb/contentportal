class CreateSubjecttopics < ActiveRecord::Migration[5.0]
  def change
    create_table :subjecttopics do |t|
      t.string :literature
      t.string :leteracy
      t.string :grammar
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
