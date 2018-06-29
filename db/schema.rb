# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_06_29_061447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.string "episode_id"
    t.string "url"
    t.string "director"
    t.string "producer"
    t.datetime "release_date"
    t.text "opening_crawl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films_people", id: false, force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "person_id", null: false
    t.index ["film_id"], name: "index_films_people_on_film_id"
    t.index ["person_id"], name: "index_films_people_on_person_id"
  end

  create_table "films_planets", id: false, force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "planet_id", null: false
    t.index ["film_id"], name: "index_films_planets_on_film_id"
    t.index ["planet_id"], name: "index_films_planets_on_planet_id"
  end

  create_table "films_species", id: false, force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "species_id", null: false
    t.index ["film_id"], name: "index_films_species_on_film_id"
    t.index ["species_id"], name: "index_films_species_on_species_id"
  end

  create_table "films_starships", id: false, force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "starship_id", null: false
    t.index ["film_id"], name: "index_films_starships_on_film_id"
    t.index ["starship_id"], name: "index_films_starships_on_starship_id"
  end

  create_table "films_vehicles", id: false, force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "vehicle_id", null: false
    t.index ["film_id"], name: "index_films_vehicles_on_film_id"
    t.index ["vehicle_id"], name: "index_films_vehicles_on_vehicle_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.float "height"
    t.float "mass"
    t.string "hair_color"
    t.string "skin_color"
    t.string "eye_color"
    t.string "birth_year"
    t.string "gender"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_people_on_id"
  end

  create_table "people_planets", id: false, force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "planet_id", null: false
    t.index ["person_id"], name: "index_people_planets_on_person_id"
    t.index ["planet_id"], name: "index_people_planets_on_planet_id"
  end

  create_table "people_species", id: false, force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "species_id", null: false
    t.index ["person_id"], name: "index_people_species_on_person_id"
    t.index ["species_id"], name: "index_people_species_on_species_id"
  end

  create_table "people_starships", id: false, force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "starship_id", null: false
    t.index ["person_id"], name: "index_people_starships_on_person_id"
    t.index ["starship_id"], name: "index_people_starships_on_starship_id"
  end

  create_table "people_vehicles", id: false, force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "vehicle_id", null: false
    t.index ["person_id"], name: "index_people_vehicles_on_person_id"
    t.index ["vehicle_id"], name: "index_people_vehicles_on_vehicle_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.float "rotation_period"
    t.float "orbital_period"
    t.float "diameter"
    t.string "climate"
    t.string "gravity"
    t.string "terrain"
    t.float "surface_water"
    t.string "population"
    t.string "references"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services_resource_handlers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services_sw_apis", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.string "designation"
    t.decimal "average_height"
    t.string "skin_colors"
    t.string "hair_colors"
    t.string "eye_colors"
    t.decimal "average_lifespan"
    t.string "language"
    t.string "homeworld"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "starships", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "manufacturer"
    t.decimal "cost_in_credits"
    t.decimal "length"
    t.string "max_atmosphering_speed"
    t.string "crew"
    t.float "passengers"
    t.float "cargo_capacity"
    t.string "consumables"
    t.float "hyerdrive_rating"
    t.string "MGLT"
    t.string "integer"
    t.string "starship_class"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "manufacturer"
    t.float "cost_in_credits"
    t.float "length"
    t.float "max_atmosphering_speed"
    t.integer "crew"
    t.integer "passengers"
    t.string "url"
    t.float "cargo_capacity"
    t.string "consumables"
    t.string "vehicle_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
