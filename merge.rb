def merge_sort(arr)
    answer = []
    if arr.length > 1
        focused = arr.each_slice((arr.length/Float(2)).ceil).to_a
        first =  merge_sort(focused[0])
        second = merge_sort(focused[1])
        while first.length > 0 || second.length > 0
            if first[0].nil?
                answer << second[0]
                second.shift()
            elsif second[0].nil?
                answer << first[0]
                first.shift()
            elsif first[0] < second[0]
                answer << first[0]
                first.shift()
            else
                answer << second[0]
                second.shift()
            end
        end
        return answer
    else
        return arr
    end
end
print merge_sort([2, 6, 3, 6, 4, 5, 8, 9, 10, 0, -20])