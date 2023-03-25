class CreateMembershipsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships_tables do |t|

      t.timestamps
    end
  end
end
