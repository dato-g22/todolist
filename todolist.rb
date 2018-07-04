puts "Hi user, this is your todo-list program."
list = ["buy milk", "eat chocolate"]

loop do
  puts "Please enter your command: "
  input=gets.chomp

  if input == "quit"
    puts "Goodbye!"
  break
  end

  if input == "list"
    puts "Get this done: "
    puts list
  end

  if input == "add"
    puts "Please enter your to-do: "
    todo=gets.chomp
    list.push(todo)
  end

  if input == "done"
    puts "Which task did you complete? "
    complete=gets.chomp

    if list.include?(complete)
      puts "Well done! Congrats for completing this task!! :) "
      list.delete(complete)
      else
      puts "This task does not exist. Choose one of these and enter an existing task: "
      puts list
    end

  end

end

todolist = File.new("todolist.txt", "w")
todolist.write(list)
todolist.close
