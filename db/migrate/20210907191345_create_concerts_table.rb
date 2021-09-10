class CreateConcertsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
    t.string 'artist' 
    t.string 'display_name'
    t.datetime 'date'
    t.string 'city'
    t.string 'state'
    t.string 'venue'
    end
  end
end
