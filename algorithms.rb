#Phase 1 
def my_min(array)
    array.each do |item1|
        return item1 if array.all?{|item2| item1 <= item2}
        next
    end
end 
#O(n^2)

#Phase2
def my_min2(array)
    min = array.first
    array.each {|item| min = item if item <= min}
    return min
end
#O(n)

p my_min([4,3,2,6,-5,5,8,10])
p my_min2([4,3,2,6,-5,5,8,10])