class CreateGymsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :gyms_tables do |t|

      t.timestamps
    end
  end
end
