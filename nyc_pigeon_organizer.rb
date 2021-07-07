def nyc_pigeon_organizer(data)
  names = []
  output = {}
  
  data.each do |char, items|
    items.each do |x, array|
      array.each do |name|
        if names.include?(name) == false
          names << name
        end
      end
    end
  end
  
  names.each do |number|
    output[number] = Hash.new {
      |key, value| key[value] = []
    }
    data.each do |char, items|
      output[number][char]
      items.each do |x, array|
        array.each do |name|
          if name == number
            output[name][char] << x.to_s
          end
        end
      end
    end
  end
  output
end
