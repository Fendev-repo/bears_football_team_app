class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :background
      t.boolean :active_player
      t.date :start_date
      t.string :image
      t.float :pb_bench_press
      t.time :pb_100mtr_sprint
      t.float :pb_squat_weight
      t.float :height
      t.float :weight
      t.string :current_postion
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
