def nyc_pigeon_organizer (raw_data)
  pigeon_data = {}

  raw_data.each do |first_level, all_other|
    all_other.each do |category, array|
      array.each do |name|
        pigeon_data[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  x = pigeon_data.keys
  raw_data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          pigeon_data[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
  raw_data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          pigeon_data[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  raw_data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          pigeon_data[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return pigeon_data 
end 




