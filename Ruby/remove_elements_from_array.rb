arr = [5, 6, 5, 4, 3, 1, 2, 5, 4, 3, 3, 3]

# delete an element from the end of the array
arr.pop 
# => 3 (returns the element that was deleted)

# delete an element from the beginning of the array
arr.shift 
# => 5 (returns the element being deleted)

# updated array after above 2 edits:
arr = [6, 5, 4, 3, 1, 2, 5, 4, 3, 3]

# delete an element at a given position 
arr.delete_at(2)
# => 4 (index 2 is deleted and returned)

# delete all occurneces of a given element
arr.delete(5)
# => 5 (returns item being deleted)
# updated array: [6, 3, 1, 2, 4, 3, 3] (no more 5s)


def end_arr_delete(arr)
    # delete the element from the end of the array and return the deleted element
    arr.pop
end

def start_arr_delete(arr)
    # delete the element at the beginning of the array and return the deleted element
    arr.shift
end

def delete_at_arr(arr, index)
    # delete the element at the position #index
    arr.delete_at(index)
end

def delete_all(arr, val)
    # delete all the elements of the array where element = val
    arr.delete(val)
end