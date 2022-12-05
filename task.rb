product_info = ["product_1=2", "product_4=2", "product_3=2", "product_2=2"]
arr =[]
product_info.each do |prod|
    s1 = prod.split('=')
    
    value = s1[1]

    s2 = s1[0].split('_')
    key = s2[1]
    arr << [key, value]
   
end
puts arr.inspect