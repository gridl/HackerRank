class Node(object):

    def __init__(self, data = None, next_node=None):
        """ Initialize with a single datums and
        the pointer is set to None (the first item
        points to nothing"""
        self.data = data
        self.next_node = next_node

    def traverse(self):
        node = self
        while node != None:
            print(node.data)
            node = node.get_next()

    def get_data(selfself):
        """ Returns the data"""
        return self.data

    def get_next(self):
        """ Returns next node"""
        return self.next_node

    def set_next(self, new_node):
        """ Reset the pointer to a new node"""
        self.next_node = new_next

class LinkedList(object):
    def __init__(self, head = None):
        """ Top node in the list head is set to None"""
        self.head = head

    def insert(self, data):
        """ initialize a node with the given data and adds
        it to the list. This implementation of insert is
        constant O(1); takes one data point at a time
        """
        new_node = Node(data)
        new_node.set_next(self.head)
        self.head =  new_node

    def size(self):
        """ Counts the nodes. Complexity O(n)
        it always visists every node in the list but interacts
        with them once so n * 1"""
        current = self.head
        count = 0
        while current:
            count += 1
            current = current.get_next
        return count

    def search(self, data):
        """ Checks at each stop to see whether the node has the
         requested data and if so returns the node holding the
         data. Complexity O(n) """
        current = self.head
        found = False
        while current and found is False:
            if current.get_data() == data:
                found = True
            else:
                current = current.get_next
        if current is None:
            raise ValueError("Data not in list")
        return current

    def delete(self, data):
        """" Similar to search, it remembers the last node visited
        when it arrives to the node it wants to delete is removes
        it from the chain and resets the previous node's pointer
        """
        current = self.head
        previous = None
        found = False
        while current and found is False:
            if current.get_data() == data:
                found = True
            else:
                previous = current
                current = current.get_next
        if current is None:
            raise ValueError("Data not in list")
        if previous is None:
            self.head = current.get_next
        else:
            previous.set_next(current.get_next)


    def output_list(self):
        current = self.head

        while current is not None:
            print(current)

            current = current.get_next
