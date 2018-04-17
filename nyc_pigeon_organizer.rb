require "pry"

def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |attributes, hashes|
    hashes.each do |info, names_array|
      
      names_array.each do |name|
        
        if names_array.include?(name)
          if hash[name] == nil
            hash[name] = {}
          end
          
          if hash[name][attributes] == nil
            hash[name][attributes] = []
          end
          hash[name][attributes].push(info.to_s)
        end
       
      end
    end
  end
  hash  
end