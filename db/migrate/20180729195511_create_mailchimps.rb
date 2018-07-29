class CreateMailchimps < ActiveRecord::Migration[5.1]
  def change
    create_table :mailchimps do |t|

      t.timestamps
    end
  end
end
