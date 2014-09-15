require 'csv'
country = Country.create name: 'Brazil', code: 'BR'
cities = []
limit = 1000
CSV.foreach(Rails.root.join("db/csv_data/brazil.csv")) do |row|
  state = State.find_by_name row[0]
  if state.nil?
    state = State.create name: row[0], code: row[1], country: country
  end
  cities << City.new(name: row[2], country: country, state: state)
  if(cities.size >= 1000)
    City.import cities 
    cities = []
  end
end
City.import cities 

