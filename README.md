# linked lists

First attempt at creating a linked list and getting accustomed to datastructures in ruby.


## Methods
| ( # )Methods            | Description                                                                             |
|-------------------------|-----------------------------------------------------------------------------------------|
| append(value)           | adds a new node with the passed value to the end linked list                            |
| prepend(value)          | adds a new node with the passed valeu to the start of the linked list                   |
| size                    | returns the number of nodes in the linked list                                          |
| head                    | returns the first node in the linked list                                               |
| tail                    | returns the last node in the linked list                                                |
| at(index)               | returns the value of the node at the given index                                        |
| pop                     | removes the last node from the linked list                                              |
| contain?9value)         | returns true if the given value is included in the linked list, otherwise returns false |
| find(value)             | returns the index of the given value in the linked list                                 |
| to_s                    | returns the linked list object as a string in "(node) -> (node) -> ..." format          |
| insert_at(value, index) | inserts a new node with the given value at the given index on the linked list object    |
| remove_at(index)        | removes the node at the given index. does nothing if index is not in the linked list    |

### notes