class CreateMemoriesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :memories do |t|
    t.string 'title'
    t.text 'details'
    t.integer 'user_id'
    t.integer 'concert_id'
    end
  end
end
