class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.integer :retweets, default: 0
      t.references :tweet, null: false, foreign_key: true

      t.timestamps
    end
  end
end