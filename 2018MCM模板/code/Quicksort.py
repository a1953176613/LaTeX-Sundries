# The quick sort in python.

def Quicksort(arr):
    if len(arr)<=1:
        return arr
    pivot=arr[int(len(arr)/2)]
    left=[x for x in  arr if x<pivot]
    middle=[x for x in arr if x==pivot]
    right=[x for x in arr if x>pivot]
    return Quicksort(left)+middle+Quicksort(right)

print(Quicksort([3,6,8,10,1,2,1]))