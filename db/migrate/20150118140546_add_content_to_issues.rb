class AddContentToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :context, :text
  end
end
