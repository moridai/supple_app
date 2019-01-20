class AddAddressToResponses < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :address, :string
  end
end
