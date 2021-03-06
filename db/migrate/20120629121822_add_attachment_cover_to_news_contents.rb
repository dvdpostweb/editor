class AddAttachmentCoverToNewsContents < ActiveRecord::Migration
  def self.up
    add_column :news_contents, :cover_file_name, :string
    add_column :news_contents, :cover_content_type, :string
    add_column :news_contents, :cover_file_size, :integer
    add_column :news_contents, :cover_updated_at, :datetime
  end

  def self.down
    remove_column :news_contents, :cover_file_name
    remove_column :news_contents, :cover_content_type
    remove_column :news_contents, :cover_file_size
    remove_column :news_contents, :cover_updated_at
  end
end
