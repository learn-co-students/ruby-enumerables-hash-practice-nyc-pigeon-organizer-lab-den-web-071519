require "pry"
def nyc_pigeon_organizer(data)
  list = {}
  data.each do |k, v|
     v.each do |k2, names|
       names.each do |name|
       if !list[name]
         list[name] = {}
       end
       if !list[name][k]
         list[name][k] = []
       end
       list[name][k] << k2.to_s
      end
    end
  end
  list
end

#take current hash and extract names values
#loop through each key/value pair in each hash to find if values match names
#if there is a match, 