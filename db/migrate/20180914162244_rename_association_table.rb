class RenameAssociationTable < ActiveRecord::Migration[5.2]
  	def self.up
      rename_table :associations, :ecosystems
  	end

    def self.down
      rename_table :ecosystems, :associations
    end
end
