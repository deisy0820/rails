class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :identificacion
      t.string :carnet

      t.timestamps
    end
  end
end
