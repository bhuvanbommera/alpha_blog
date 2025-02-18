class ShowDateTime < ActiveRecord::Migration[8.0]
  def change
    
    
    add_column :articles, :rating, :integer
  end
end
