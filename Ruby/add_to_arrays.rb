# push - add an element to the end of the list
x = [1, 2]
x.push(3)
# => [1,2,3]

# inset - add one or more elements starting from a given index
y = [1,2]
# 1 is the index & 5, 6, 7 are what's being added
y.insert(1, 5 ,6 ,7)
# => [1, 5, 6, 7, 2]

# unshift allows one or more elements to be added at the beginning of the list
z = [1,2,3]
z.unshift(10, 20, 30)
# => [10, 20, 30, 1, 2, 3]

def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    arr.push(element)
    return arr
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    arr.unshift(element)
    return arr 
end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    arr.insert(index, element)
    return arr
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    arr.insert(index, 1, 2)
    return arr
end
