class CreateServicesSwApis < ActiveRecord::Migration[5.2]
  def change
    create_table :services_sw_apis do |t|

      t.timestamps
    end
  end
end
