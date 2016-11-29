class CreateTwitterAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :twitter_accounts do |t|
      t.text :content
      t.text :name  , defaul: "@Unknown"
      t.text :profile_image , default: nil
      t.text :content , default: nil
      t.timestamps
    end
  end
end
