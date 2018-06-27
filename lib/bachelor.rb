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
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
