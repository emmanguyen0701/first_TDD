
def my_uniq(array)
    new_arr = []
    array.each do |el|
        unless new_arr.include?(el)
            new_arr << el
        end
    end
    new_arr
end

class Array 
    def two_sum
        new_arr = []
        (0...self.length).each do |i1|
           (0...self.length).each do |i2|
             if i2 > i1 && self[i1] + self[i2] == 0 && self[i1] != 0
               new_arr << [i1, i2]
             end
           end
        end
         new_arr
    end

    def my_transpose
        new_arr = []
        (0...self.length).each do |row|
            sub_arr = []
            (0...self.length).each do |col|
                sub_arr << self[col][row]
            end
            new_arr << sub_arr
          end 
        new_arr
    end

    def pick_stocks
        new_arr = []
        sorted = self.sort
        new_arr << self.index(sorted[0])
        new_arr << self.index(sorted[-1])
        new_arr
    end
end


