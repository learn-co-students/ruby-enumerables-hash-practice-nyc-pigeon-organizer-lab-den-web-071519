def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |k, v|
    v.each do |new_v, names|
      names.each do |name|
        
        if !new_hash[name]
          new_hash[name] = {}
        end
        
        if !new_hash[name][k]
          new_hash[name][k]=[]
        end
        
        new_hash[name][k] << new_v.to_s 
      end
    end
  end
  new_hash
        
end
