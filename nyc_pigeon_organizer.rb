require 'pry' 
def nyc_pigeon_organizer(data)
  pigeons = data[:gender][:male] + 
    data[:gender][:female]
  hash = Hash[pigeons.collect { |birds| [birds, find_data(data, birds)] } ]
  p hash 

end

def find_data(data, pigeon)
  colors = data[:color].select{|k,v| v.include?(pigeon)}.keys
  colors_hash = {:color => colors.collect{|c| c.to_s}}
  gender = data[:gender].select{|k,v| v.include?(pigeon)}.keys
  gender_hash = {:gender => gender.collect{|word| word.to_s}}
  lives_hash ={:lives => data[:lives].select{|k,v| v.include?(pigeon)}.keys}
  new = colors_hash.merge(gender_hash, lives_hash)
  new 
end 