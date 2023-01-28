# Arrays

> An array in `C++` is a collection of elements of the _same data type_, stored in _contiguous memory locations_. The elements can be accessed by their `index`, which is a numerical value that corresponds to the position of the element in the `array`.

## What does array name means?

<p align="center">
    <img src="/05_Material/CodeSnaps/array-6.png" style="height: 30vh; padding-left: 40vh;">
    
</p>

The variable `arr` is a `pointer` that points to the first element in the `array`. This is the memory address where the first element is stored.This memory address is used to point to the beginning of the array and can be used to iterate through the elements of the array. You can also access the first element by using the `dereference operator` **(\*arr)** or by using the `subscript operator` **(arr[0] or 0[arr])**.

## The difference between 'arr' and '&arr'

- 'arr' refers to the array itself and the memory location of the first element of the array.'arr' can be used to access the elements of the array
- '&arr' is the memory address of the array, which is a pointer to the first element of the array. Using the '&' operator before a variable's name, it gives the memory address of that variable.'&arr' can be used to obtain the memory location of the array

<p align="center">
    <img src="/05_Material/CodeSnaps/array-7.png" style="height: 30vh; padding-left: 40vh;">
    
</p>

The variable `arr` is an array of integers with a size of 5. It is an `lvalue`, meaning it can be used on the left side of an assignment. `&arr` is a pointer to the array object, an `rvalue` with the value of the memory address of the array. They point to the same location in memory. To differentiate, compare `*(arr)` and `*(&arr)`. The first is an `lvalue` of type int and the second an `lvalue` of type int [5].

## calculating size of array

There are two ways to calculate the size of an array

- Dividing the total size of the array by the size of the first element **sizeof(arr)/sizeof(arr[0])**. This method is widely used.
- Subtracting the memory address of the last element of the array from the memory address of the first element: **\*(&arr+1)-arr**.

## Array with pointers

<p align="center">
    <img src="/05_Material/CodeSnaps/array-8.png" style="height: 30vh; padding-left: 40vh;">
    
</p>

## Arrays with functions

<p align="center">
    <img src="/05_Material/CodeSnaps/array-8.png" style="height: 40vh; padding-left: 50vh;">
    
</p>

> When using the `pointer ptr` to access elements of the array, adding 1 to it does not increment the memory address by 1 byte, but rather by the size of the data type of the array (in this case, an int). So when we say ptr + 1, it's equivalent to accessing the memory location that is 1 \* sizeof(int) bytes away from the original memory location of ptr.

### Bonus Point

When an `array` is passed as a parameter to a function, a `pointer` to the first element of the `array` is created, which occupies **actual memory**. In the main function, the `array`(means array name ,i.e arr) itself does not occupy memory, but in a **user-defined function**, the pointer to the array does occupy memory. Therefore, the size of the array may not be correctly determined in a user-defined function by `sizeof(arr)/sizeof(arr[0])` because arr is a `pointer` with actual memory ).

## Types of Arrays

1. [Fixed-size arrays](/01_Data%20Structures/Linear-Data-Structures/01_Array/Static-array/Readme.md)
2. [Dynamic arrays](/01_Data%20Structures/Linear-Data-Structures/01_Array/Dynamic-array/Readme.md)
