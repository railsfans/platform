class CreateSoliders < ActiveRecord::Migration
  def change
    create_table :soliders do |t|
      t.string :name
      t.integer :age
      t.boolean :sex
      t.float :height
      t.float :weight
      t.string :IDNumber
      t.string :birthday
      t.string :num
      t.integer :score
      t.string :education
      t.string :recordin_unit
      t.string :recordin_people
      t.string :suo_leader
      t.string :zhian_leader
      t.string :ju_leader
      t.string :shangji_suggestion
      t.string :used_name
      t.string :nation
      t.text :household
      t.string :household_type
      t.boolean :marital_status
      t.boolean :education_status
      t.text :address
      t.string :phone
      t.string :father_IDNumber
      t.string :mother_IDNumber
      t.string :father_name
      t.string :mother_name
      t.string :father_workplace
      t.string :mother_workplace
      t.string :father_address
      t.string :mother_address
      t.string :father_contact
      t.string :mother_contact
      t.string :father_political
      t.string :mother_political
      t.boolean :father_attitude
      t.boolean :mother_attitude

      t.timestamps
    end
  end
end
