class RenameFromDescriptionToMungedDescription < ActiveRecord::Migration[5.2]
  change_table :items do |t|
    t.rename :description, :munged_description
  end
end
