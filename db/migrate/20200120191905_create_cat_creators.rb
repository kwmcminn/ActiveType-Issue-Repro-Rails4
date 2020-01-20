class CreateCatCreators < ActiveRecord::Migration
  def change
    create_table :cat_creators do |t|

      t.timestamps null: false
    end
  end
end
