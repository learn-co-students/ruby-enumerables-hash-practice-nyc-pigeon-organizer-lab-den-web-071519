require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, info_hash|
    info_hash.each do |detail, name_array|
      name_array.each do |name|
        if !new_hash.keys.include?(name)
          new_hash[name] = {}
        end
        
        if !new_hash[name].keys.include?(attribute)
          new_hash[name][attribute] = []
        end
        
        if !new_hash[name][attribute].include?(detail)
          new_hash[name][attribute] << detail.to_s
        end
      end
    end
  end
  new_hash
  
end
