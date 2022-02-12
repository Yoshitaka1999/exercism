class Isogram
    def isogram?(input)
        input_arr = input.chars
        input_arr.each do |s|
            if input_arr.include?(s)
                puts "Expected false, '#{input}' is not an isogram"
            else
                puts "Expected true, '#{input}' is an isogram"
            end
        end
    end
end