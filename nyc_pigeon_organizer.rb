def nyc_pigeon_organizer(data)
    fin = {}

    data.each do |attri, val|
        val.each do |name, arr|
            arr.each do |pigon|
                if !fin[pigon]
                    fin[pigon] = {color: [], gender: [], lives: []}
                end
                if fin[pigon]
                    fin[pigon][attri] << name.to_s
                end
            end
        end
    end
    p fin
end
