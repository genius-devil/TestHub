class CreateAccessTokens < ActiveRecord::Migration
  def change
    create_table :access_tokens do |t|
      t.binary   :token, :refresh_token
      t.datetime :expires_at
      t.string   :options
      t.timestamps
    end
  end
end
