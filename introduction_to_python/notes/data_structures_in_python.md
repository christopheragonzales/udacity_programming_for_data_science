# Data Structures in Python

## Lists and Membership Operators

- A list is a data structure in Python that is a mutable ordered sequence of elements.
- Lists are defined using square brackets `[]` and elements are separated by commas.
- Lists can contain a mix of different data types, including other lists.
  - Example

  ```python
  list_of_random_things = [1, 3.4, 'string', True]
  ```

- Lists are ordered, meaning each element has a specific position or index.
- Python uses zero-based indexing, where the first element is at index 0.
  - Example

  ```python
  >>> list_of_random_things[0]
  1
  ```

- Negative indices can be used to access elements from the end of the list.
  - Examples

  ```python
  >>> list_of_random_things[len(list_of_random_things) -1]
  True
  ```

  ```python
  >>> list_of_random_things[-1]
  True
  >>> list_of_random_things[-2]
  a string
  ```

- Attempting to access an index that does not exist will result in an `IndexError`.

*Example of defining a list:*
```python
months = ["January", "February", "March", "April"]
```

*Example of accessing elements by index:*
```python
print(months[0])  # Output: January
print(months[-1])  # Output: April
```

*Example of an IndexError:*
```python
print(months[25])  # Raises IndexError
```

## Slicing Lists
- When slicing, it is important to remember that the `lower` index is `inclusive` and the `upper` index is `exclusive`.

    ```python
    >>> list_of_random_things = [1, 3.4, 'a string', True]
    >>> list_of_random_things[1:2]
    [3.4]
    ```

- Slicing from the beginning to an index position

    ```python
    >>> list_of_random_things[1:]
    [3.4, 'a string', True]
    ```

- Slicing from an index position to the end
    ```python
    >>> list_of_random_things[1:]
    [3.4, 'a string', True]
    ```
## Membership Operators

- We can use `in` or `not in` to return a `bool` for whether an element exists within our list or if one string is a substring of another

| **Keyword**| **Operator** |
|:-----------|:-------------|
| `in` | evaluates if an element exists within our list |
| `not in`| evaluates if an element does not exist within our list |

*Examples*

```python
>>> 'this' in 'this is a string'
True

>>> 'in' in 'this is a string'
True

>>> 'isa' in 'this is a string'
False

>>> 5 not in [1, 2, 3, 4, 6]
True

>>> 5 in [1, 2, 3, 4, 6]
False
```

## Mutability and Order

- **Mutability** refers to whether or not an object change once it has been created.
  - If an object can change, it is mutable
    - Like a list
  - If it cannot, it is immutable
    - Like a string
- **Order** is about whether the position of an element in the object can be used to access the element. 
  - Both strings and lists are ordered. 
  - We can use the order to access parts of a list and string.

## List Methods

### Useful Functions
  
| **Function** | **Return** |
|:-------------|:-----------|
| `len()`      | Returns how many elements are in a list |
| `max()`      | Returns the greatest element of the list. How the greatest element is determined depends on what type of objects are in the list. The maximum element in a list of numbers is the largest number. The maximum element in a list of strings is the element that would occur last if the list were sorted alphabetically. This works because the `max()` function is defined in terms of the greater than comparison operator. The `max()` function is undefined for lists that contain elements from different, incomparable types.list |
| `min()`      | returns the smallest element in a list. min is the opposite of max, which returns the largest element in a list |
| `sorted()`   | Returns a copy of a list in order from smallest to largest, leaving the list unchanged. Note again that for string objects, sorted smallest to largest means sorting in alphabetical order |
| `join()`     | Join is a string method that takes a list of strings as an argument, and returns a string consisting of the list elements joined by a separator string |
| `append()`   | A helpful method called append adds an element to the end of a list |

### Join Example

```python
>>> new_str = "\n".join(["fore", "aft", "starboard", "port"])
>>> print(new_str)

fore
aft
starboard
port

>>> name = "-".join(["García", "O'Kelly", "Davis"])
>>> print(name)

García-O'Kelly-Davis
```

### Append Example

```python
>>> letters = ['a', 'b', 'c', 'd']
>>> letters.append('z')
>>> print(letters)

['a', 'b', 'c', 'd', 'z']
```

## Tuples

- A tuple is another useful container. It's a data type for immutable ordered sequences of elements.
- Tuples are often used to store related pieces of information.

*Example of a tuple:*
```python
location = (13.4125, 103.866667)
print("Latitude:", location[0])
print("Longitude:", location[1])
```

- Tuples are similar to lists in that they store an ordered collection of objects which can be accessed by their indices.
- Unlike lists, tuples are immutable - you can't add and remove items from tuples, or sort them in place.

- Tuples can also be used to assign multiple variables in a compact way.

*Example of tuple unpacking:*
```python
dimensions = 52, 40, 100
length, width, height = dimensions
print("The dimensions are {} x {} x {}".format(length, width, height))
```

- The parentheses are optional when defining tuples, and programmers frequently omit them if parentheses don't clarify the code.
- In the second line, three variables are assigned from the content of the tuple dimensions. This is called tuple unpacking.
- You can use tuple unpacking to assign the information from a tuple into multiple variables without having to access them one by one and make multiple assignment statements.

*Example of compact tuple unpacking:*
```python
length, width, height = 52, 40, 100
print("The dimensions are {} x {} x {}".format(length, width, height))
```

## Sets

- A set is a data type for mutable unordered collections of unique elements.
- One application of a set is to quickly remove duplicates from a list.

*Example of creating a set:*
```python
numbers = [99, 100, 1, 3, 4, 99, 100]
unique_nums = set(numbers)
print(unique_nums)  # Output: {1, 3, 99, 100, 4}
```

- Sets support the `in` operator the same as lists do.
- You can add elements to sets using the `add` method, and remove elements using the `pop` method, similar to lists.
- When you pop an element from a set, a random element is removed. Sets are unordered, so there is no "last element".

*Example of set operations:*
```python
fruit = {"apple", "banana", "orange", "grapefruit"}  # define a set

print("watermelon" in fruit)  # check for element

fruit.add("watermelon")  # add an element
print(fruit)

print(fruit.pop())  # remove a random element
print(fruit)
```

This outputs:
```
False
{'grapefruit', 'orange', 'watermelon', 'banana', 'apple'}
grapefruit
{'orange', 'watermelon', 'banana', 'apple'}
```

- Other operations you can perform with sets include those of mathematical sets.
- Methods like `union`, `intersection`, and `difference` are easy to perform with sets, and are much faster than such operations with other containers.

*Example of comparing set and list operations:*
```python
import time

# Sample data
set1 = set(range(1000))
set2 = set(range(500, 1500))
list1 = list(set1)
list2 = list(set2)

# Union
start_time = time.time()
union_set = set1.union(set2)
print("Set Union Time:", time.time() - start_time)

start_time = time.time()
union_list = list(set(list1 + list2))
print("List Union Time:", time.time() - start_time)

# Intersection
start_time = time.time()
intersection_set = set1.intersection(set2)
print("Set Intersection Time:", time.time() - start_time)

start_time = time.time()
intersection_list = [x for x in list1 if x in set2]
print("List Intersection Time:", time.time() - start_time)

# Difference
start_time = time.time()
difference_set = set1.difference(set2)
print("Set Difference Time:", time.time() - start_time)

start_time = time.time()
difference_list = [x for x in list1 if x not in set2]
print("List Difference Time:", time.time() - start_time)
```

The code will produce output similar to:
```
Set Union Time: 9.489059448242188e-05
List Union Time: 0.00022459030151367188
Set Intersection Time: 8.058547973632812e-05
List Intersection Time: 0.00015497207641601562
Set Difference Time: 7.700920104980469e-05
List Difference Time: 0.0001628398895263672
```

- This output demonstrates that operations performed on set objects are significantly faster than those on list objects.
- In this example, set operations are approximately 2 to 3 times faster than their list counterparts.
- The exact speed difference can vary based on factors such as the size of the data and the specific nature of the operations.

## Dictionaries and Identifiers

- A dictionary is a mutable data type that stores mappings of unique keys to values.
- Here's a dictionary that stores elements and their atomic numbers.

*Example of a dictionary:*
```python
elements = {"hydrogen": 1, "helium": 2, "carbon": 6}
```

- In general, dictionaries look like key-value pairs, separated by commas:
  ```python
  {key1:value1, key2:value2, key3:value3, key4:value4, ...}
  ```

- Dictionaries are mutable, but their keys need to be any immutable type, like strings, integers, or tuples.
- It's not necessary for every key in a dictionary to have the same type.

*Example of a dictionary with mixed key types:*
```python
random_dict = {"abc": 1, 5: "hello"}
```

- We can look up values in the dictionary using square brackets `[]` around the key, like `dict_name[key]`.

*Example of looking up values:*
```python
print(elements["helium"])  # Output: 2
```

- We can also insert a new element into a dictionary.

*Example of inserting a new element:*
```python
elements["lithium"] = 3
print(elements)  # Output: {'hydrogen': 1, 'carbon': 6, 'helium': 2, 'lithium': 3}
```

- If we try to look up a key that is not in our dictionary using square brackets, it will give a `KeyError`.

- We can check whether a key is in a dictionary using the `in` keyword.
- Dictionaries have a related method `get` that looks up values in a dictionary but returns `None` (or a default value of your choice) if the key isn't found.

*Example of checking for keys and using `get`:*
```python
print("carbon" in elements)  # Output: True
print(elements.get("dilithium"))  # Output: None
```

- Identity Operators:
  - `is` evaluates if both sides have the same identity.
  - `is not` evaluates if both sides have different identities.

*Example of identity operators:*
```python
n = elements.get("dilithium")
print(n is None)  # Output: True
print(n is not None)  # Output: False
```

- `get()` is a related methods that is useful method to look up values in a dictionary.
  - Returns `None` (or a default value of your choice) if the key is not present
    ```python
    >>> elements.get('dilithium')
    None

    >>> elements['dilithium']
    KeyError: 'dilithium'

    >>> elements.get('kryptonite', 'There\'s no such element!')
    "There's no such element!"
    ```

## Compound Data Structures

- We can include containers in other containers to create compound data structures.
- For example, this dictionary maps keys to values that are also dictionaries!

*Example of a nested dictionary:*
```python
elements = {"hydrogen": {"number": 1,
                         "weight": 1.00794,
                         "symbol": "H"},
              "helium": {"number": 2,
                         "weight": 4.002602,
                         "symbol": "He"}}
```

- We can access elements in this nested dictionary like this.

*Example of accessing nested dictionary elements:*
```python
helium = elements["helium"]  # get the helium dictionary
hydrogen_weight = elements["hydrogen"]["weight"]  # get hydrogen's weight
```

- You can also add a new key to the element dictionary.

*Example of adding a new key to a nested dictionary:*
```python
oxygen = {"number": 8, "weight": 15.999, "symbol": "O"}  # create a new oxygen dictionary 
elements["oxygen"] = oxygen  # assign 'oxygen' as a key to the elements dictionary
print('elements = ', elements)
```

Output:
```
elements = {"hydrogen": {"number": 1,
                         "weight": 1.00794,
                         "symbol": 'H'},
            "helium": {"number": 2,
                       "weight": 4.002602,
                       "symbol": "He"}, 
            "oxygen": {"number": 8, 
                       "weight": 15.999, 
                       "symbol": "O"}}
```

- For a better understanding of how to add data to a compound data structure, here is an additional example:

*Example of a more complex nested dictionary:*
```python
student_records = {
    'John': {
        'age': 20,
        'major': 'Computer Science',
        'grades': [85, 90, 92]
    },
    'Emma': {
        'age': 19,
        'major': 'Mathematics',
        'grades': [95, 88, 91]
    }
}

# Adding a new student
student_records['Alex'] = {
    'age': 21,
    'major': 'Physics',
    'grades': [80, 85, 88]
}

# Adding a grade for an existing student
student_records['John']['grades'].append(88)

# Printing the updated dictionary
print(student_records)
```

| **Data Structure**| **Ordered** | **Mutable** | **Constructor** | **Example** |
|:------------------|-------------|-------------|----------------|-------------|
| List | Yes | Yes | `[]` or `list()` | `[5.7, 4, 'yes', 5.7]` |
| Tuple | Yes | No | `()` or `tuple()` | `(5.7, 4, 'yes', 5.7)` |
| Set | No | Yes | `{}`* or `set()` | `{5.7, 4, 'yes'}` |
| Dictionary | No | No** | `{}` or `dict()` | `{'Jun': 75, 'Jul': 89}` |

\* You can use curly braces to define a set like this: {1, 2, 3}. However, if you leave the curly braces empty like this: {} Python will instead create an empty dictionary. So to create an empty set, use set().

** A dictionary itself is mutable, but each of its individual keys must be immutable.
