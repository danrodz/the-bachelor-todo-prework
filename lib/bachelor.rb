# {
#   "season 18":[
#       {
#         "name":"Nikki Ferrell",
#         "age":"26",
#         "hometown":"Kearney, Missouri",
#         "occupation":"Pediatric Nurse",
#         "status":"Winner"
#       }
#   ]
# }

def get_first_name_of_season_winner(data, seasons)
  # code here
  obj = ""
  name = ""
  data[seasons].each do |contestant|
    contestant.each do |k, v|
      if k == "status" && v == "Winner"
        obj = contestant
      end
    end
  end
  obj.each do |k, v|
    if k == "name"
      name = v.split(" ").first
    end
  end
  name
end

def get_contestant_name(data, occupation)
  # code here
  obj = ""
  name = ""
  data.each do |seasons, arrays|
    data[seasons].each do |contestant|
      contestant.each do |k, v|
        if k === "occupation" && v == occupation
          obj = contestant
        end
      end
    end
  end
  obj.each do |k, v|
    if k == "name"
      name = v
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  times = 0
  data.each do |seasons, arrays|
    data[seasons].each do |contestant|
      contestant.each do |k, v|
        if k === "hometown" && v.split(",").first == hometown.split(",").first
          times += 1
        end
      end
    end
  end
  times
end

def get_occupation(data, hometown)
  # code here
  array = []
  occupation = ""
  data.each do |seasons, arrays|
    data[seasons].each do |contestant|
      contestant.each do |k, v|
        if k === "hometown" && v.split(",").first == hometown.split(",").first
          array << contestant
        end
      end
    end
  end
  array[0].each do |k, v|
    if k == "occupation"
      occupation = v
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  age = 0.0
  age_array = []
  data[season].each do |contestant|
    contestant.each do |k, v|
      if k == "age"
        age_array << v.to_f
      end
    end
  end
  age_array.each do |x|
    age += x
  end
  age /= age_array.length
  age.round
end
