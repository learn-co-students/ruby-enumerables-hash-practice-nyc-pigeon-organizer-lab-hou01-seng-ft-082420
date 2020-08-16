
def nyc_pigeon_organizer(data)
  new_hash=
  {}
data.each do |key,value|        #1hash
 value.each do |new_value,names|
   names.each do |name|
     if !new_hash[name]
       new_hash[name] ={ }
     end 
     if !new_hash[name][key]
       new_hash[name][key]=[ ]
     end
     new_hash[name][key]<< new_value.to_s
   end 
   end
 end 
       
p new_hash
  # write your code here!
end
