# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_221_005_181_408) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'actions', force: :cascade do |t|
    t.bigint 'goal_id', null: false
    t.string 'name'
    t.text 'description'
    t.float 'points'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['goal_id'], name: 'index_actions_on_goal_id'
  end

  create_table 'goals', force: :cascade do |t|
    t.bigint 'life_part_id', null: false
    t.string 'name'
    t.text 'description'
    t.float 'points'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['life_part_id'], name: 'index_goals_on_life_part_id'
  end

  create_table 'life_parts', force: :cascade do |t|
    t.bigint 'my_life_id', null: false
    t.string 'name'
    t.text 'description'
    t.float 'points'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['my_life_id'], name: 'index_life_parts_on_my_life_id'
  end

  create_table 'my_lives', force: :cascade do |t|
    t.text 'description'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_my_lives_on_user_id'
  end

  create_table 'positive_affirmations', force: :cascade do |t|
    t.string 'category'
    t.text 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'tasks', force: :cascade do |t|
    t.bigint 'action_id', null: false
    t.string 'name'
    t.text 'description'
    t.float 'points'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['action_id'], name: 'index_tasks_on_action_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'user_name'
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
  end

  add_foreign_key 'actions', 'goals'
  add_foreign_key 'goals', 'life_parts'
  add_foreign_key 'life_parts', 'my_lives'
  add_foreign_key 'my_lives', 'users'
  add_foreign_key 'tasks', 'actions'
end
