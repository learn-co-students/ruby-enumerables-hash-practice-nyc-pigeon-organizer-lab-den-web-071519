require 'pry'

def nyc_pigeon_organizer(data)
  new_pigeon = {}
  data.each do |key, value|
    value.each do |attribute, p_names|
      p_names.each do |p_name|
        if !new_pigeon[p_name]
          new_pigeon[p_name] = {}
        end

        if !new_pigeon[p_name][key]
          new_pigeon[p_name][key] = []
        end

        new_pigeon[p_name][key] << attribute.to_s
        
      end
    end
  end
  new_pigeon
end
