class CancelRenameFromDescriptionToMungedDescription < ActiveRecord::Migration[5.2]
  change_table :items do |t|
    t.rename :munged_description, :description
  end
end
