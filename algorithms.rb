#Phase 1 
def my_min(array)
    array.each do |item1|
        return item1 if array.all?{|item2| item1 <= item2}
        next
    end
end 
#O(n^2)

def largest_contiguous_subsum(array)
    sub_arrs = []
    array.each_index do |ind1|
        array[ind1..-1].each_index do |ind2|
            sub_arrs.push(array[ind1..ind2+ind1])
        end
    end
    max_sum = sub_arrs.first.sum
    sub_arrs.each {|sub| max_sum = sub.sum if sub.sum >= max_sum }
    return max_sum
end

#Phase2
def my_min2(array)
    min = array.first
    array.each {|item| min = item if item <= min}
    return min
end
#O(n)



p my_min([4,3,2,6,-5,5,8,10])
p my_min2([4,3,2,6,-5,5,8,10])
list = [5, 3, -7]
list2 = [2, 3, -6, 7, -6, 7]
list3 = [-5, -1, -3]
p largest_contiguous_subsum(list)
p largest_contiguous_subsum(list2)
p largest_contiguous_subsum(list3)