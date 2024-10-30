class Stack
  def initialize
    @stack = []  
  end

  # Push an element on to the stack
  def push(element)
    @stack.push(element)
    puts "#{element} pushed onto the stack."
  end

  # Pop an element from the stack
  def pop
    if empty?
      puts "Stack is empty, cannot pop."
    else
      element = @stack.pop
      puts "#{element} popped from the stack."
      element
    end
  end

  # Peek at the top element of the stack

  def peek
    if empty?
      puts "Stack is empty."
    else
      puts "Top element is #{@stack.last}."
      @stack.last
    end
  end

  # Check if the stack is empty
  def empty?
    @stack.empty?
  end

  # Get the current size of the stack
  def size
    @stack.size
  end

  # Display the elements in the stack
  def display
    puts "Current stack: #{@stack.join(',')}"
  end

end

stack = Stack.new
stack.push(10)
stack.push(20)
stack.display
stack.peek
stack.pop
stack.display
stack.peek
stack.pop

