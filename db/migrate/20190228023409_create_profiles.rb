class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :background
      t.boolean :active_player, default: false
      t.date :start_date
      t.string :image
      t.float :pb_bench_press_kg
      t.float :pb_100mtr_sprint_seconds
      t.float :pb_squat_weight_kg
      t.float :height
      t.float :weight
      t.string :current_position
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
