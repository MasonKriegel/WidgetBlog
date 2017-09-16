class ChangeTitleToPostTitleInPosts < ActiveRecord::Migration[5.0]
  def change
  	rename_column :Posts, :title, :posttitle
  end
end
