def nyc_pigeon_organizer(data)
  newHash = {}
  namesIsolated =  []

  #names = data[:color].values
  data[:color].map {|colors, names|names.map {|name|namesIsolated.push(name) unless namesIsolated.include? name}} #adds array of unique names to namesIsolated

  puts namesIsolated
  namesIsolated.each do |name|
    newHash[name] = {color: [], gender: [], lives: []}
  end

  data[:color].map {|colors, names| names.map {|name| newHash[name][:color].push(colors.to_s)}}
  data[:gender].map {|gender, names| names.map {|name| newHash[name][:gender].push(gender.to_s)}}
  data[:lives].map{|lives, names| names.map {|name| newHash[name][:lives].push(lives.to_s)}}
  newHash

end
