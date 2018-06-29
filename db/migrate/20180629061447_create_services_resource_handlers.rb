class CreateServicesResourceHandlers < ActiveRecord::Migration[5.2]
  def change
    create_table :services_resource_handlers do |t|

      t.timestamps
    end
  end
end
