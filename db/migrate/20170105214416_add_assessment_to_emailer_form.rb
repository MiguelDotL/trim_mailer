class AddAssessmentToEmailerForm < ActiveRecord::Migration[5.0]
  def change
    add_column :emailer_forms, :oop, :integer
    add_column :emailer_forms, :modular, :integer
    add_column :emailer_forms, :full_stack, :integer
    add_column :emailer_forms, :testing, :integer
    add_column :emailer_forms, :db, :integer
    add_column :emailer_forms, :debugging, :integer
    add_column :emailer_forms, :problem_solving, :integer
    add_column :emailer_forms, :js, :integer
    add_column :emailer_forms, :html, :integer
    add_column :emailer_forms, :css, :integer
    add_column :emailer_forms, :teamwork, :integer
    add_column :emailer_forms, :self_motivation, :integer
    add_column :emailer_forms, :communication, :integer
    add_column :emailer_forms, :energy_level, :integer
    add_column :emailer_forms, :aptitude, :integer
  end
end
