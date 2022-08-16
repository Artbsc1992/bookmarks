class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :comment
      t.reference :book, foreign_key: true

      t.timestamps
    end
  end
end
