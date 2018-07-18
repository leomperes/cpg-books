class CreateJoinTableBookAuthor < ActiveRecord::Migration[5.2]
  def change
    create_join_table :books, :authors do |t| # OPTIMIZE with `, id: false`
      t.index [:book_id, :author_id]
      t.index [:author_id, :book_id]
    end
  end
end
