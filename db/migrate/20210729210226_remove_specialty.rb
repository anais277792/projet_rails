class RemoveSpecialty < ActiveRecord::Migration[5.2]
  def change
    remove_column :Doctors, :specialty, :string
  
  end
end
