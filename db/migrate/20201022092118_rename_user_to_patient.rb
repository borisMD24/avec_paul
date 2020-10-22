class RenameUserToPatient < ActiveRecord::Migration[5.2]
  def change
    rename_table :users, :patients
  end
end
