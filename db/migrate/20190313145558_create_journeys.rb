class CreateJourneys < ActiveRecord::Migration[5.2]
  def change
    create_table :journeys do |t|
      t.string :status
      t.string :people_count
      t.date :start_date
      t.date :end_date
      t.string :destination_type
      t.string :transport_type
      t.string :name
      t.string :surname
      t.string :email
      t.string :birth_date
      t.string :phone
      t.boolean :is_a_surprise?

      t.timestamps
    end
  end
end
