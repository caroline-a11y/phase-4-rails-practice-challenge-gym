class CreateClientsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :clients_tables do |t|

      t.timestamps
    end
  end
end
