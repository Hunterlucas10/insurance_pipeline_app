class CreateLeads < ActiveRecord::Migration[8.0]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :line_of_business
      t.string :status
      t.text :notes
      t.string :agent
      t.datetime :date_added
      t.datetime :last_update

      t.timestamps
    end
  end
end
