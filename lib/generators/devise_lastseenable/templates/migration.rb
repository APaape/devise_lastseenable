class DeviseAddLastseenable<%= table_name.camelize.singularize %> < ActiveRecord::Migration
  def self.up
    add_column :<%= table_name %>, :last_seen_at, :datetime
  end

  def self.down
    remove_column :<%= table_name %>, :last_seen_at
  end
end
