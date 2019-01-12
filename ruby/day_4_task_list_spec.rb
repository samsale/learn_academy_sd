require "rspec"
require_relative "day_4_task_list.rb"


describe "Task List Testing" do

# Starting User Stories

  it "I can create a Task" do
    expect {Task.new("Test", "testing description")}.not_to raise_error
  end

  it "I can give a Task a title and retrieve it." do
    expect {Task.new("Test Title", "testing description")}.not_to raise_error
    expect(Task).to be_a(Class)
    test_task = Task.new("Test Title", "testing description")
    expect(test_task.title).to eq("Test Title")
  end

  it "I can give a Task a description and retrieve it" do
    description_task = Task.new("Test Title", "testing description")
    expect(description_task.description).to eq("testing description")
  end


  it "I can mark a Task done" do
    test_task = Task.new("Test Title", "testing description")
    expect(test_task.complete).to be false
    test_task.completed
    expect(test_task.complete).to be true
  end

  it "When I print a Task that is done, its status is shown." do
    test_task = Task.new("Test Title", "testing description")
    expect(test_task.title).to eq("Test Title")
    expect(test_task.status).to be false
    test_task.completed
    expect(test_task.status).to be true
  end

  it "I can add all of my Tasks to a TaskList." do
    expect{Task_List.new("Test Task List")}.not_to raise_error
    testing_list = Task_List.new("Test Task List")
    expect(testing_list.title).to eq("Test Task List")
    expect(testing_list.list_of_tasks.length).to be 0
    testing_list.add_task(Task.new("Test Title", "testing description"))
    expect(testing_list.list_of_tasks.length).to be 1
    expect(testing_list.list_of_tasks[0].title).to eq("Test Title")
    testing_list.add_task(Task.new("Test Title 2", "testing description"))
    expect(testing_list.list_of_tasks.length).to be 2
  end

  it "I can get the completed items." do
    # This creates an empty task list
    testing_list = Task_List.new("Test Task List")
    # This creates 3 tasks and adds them to the task list
    testing_list.add_task(Task.new("Test to see if complete 1", "testing complete method"))
    testing_list.add_task(Task.new("Test to see if complete 2", "testing complete method"))
    testing_list.add_task(Task.new("Test to see if complete 3", "testing complete method"))
    # Checks the length of all tasks
    expect(testing_list.list_of_tasks.length).to be 3
    # Set the first task to complete
    testing_list.list_of_tasks[0].completed
    # Checks title of first completed task list
    expect(testing_list.get_list_of_completed_task[0].title).to eq("Test to see if complete 1")
  end

  it "I can get the incomplete items." do
    testing_list = Task_List.new("Task list")
    testing_list.add_task(Task.new("Test to see if complete 1", "testing complete method"))
    testing_list.add_task(Task.new("Test to see if complete 2", "testing complete method"))
    testing_list.add_task(Task.new("Test to see if complete 3", "testing complete method"))
    testing_list.list_of_tasks[1].completed
    expect(testing_list.get_list_of_incomplete_task.length).to be 2
  end

# Epic: Due Date

  it "I can create a DueDateTask, which is-a Task that has-a due date." do
    new_date_task = Task.new("Test Title", "Test Decription", {:due_by_date => "2001,2,3"})
    expect(new_date_task.due_by_date).to eq("2001,2,3")
    nil_date_task = Task.new("Test Title", "Test Decription")
    expect(nil_date_task.due_by_date).to be nil
    expect(nil_date_task.description).to eq("Test Decription")
  end

  it " I can print an item with a due date with labels and values." do
    new_task = Task.new("Test Title", "Test Decription", {:due_by_date => "2019-1-10"})
    expect(new_task.due_by).to eq("Test Title - is due by Thu 10 Jan 2019")
    no_due_task = Task.new("Test Title", "Test Decription")
    expect(no_due_task.due_by).to eq("Test Title - has no due by date.")
  end

  it "I can add items with due dates to my TaskList." do
    testing_list = Task_List.new("Task list")
    testing_list.add_task(Task.new("Test Title", "Test Decription", {:due_by_date => "2001-2-3"}))
    testing_list.add_task(Task.new("Test Title 2", "Test Decription 2"))
    expect(testing_list.get_tasks_with_due_by_date.length).to be 1
  end

  it "I can list all the not completed items that are due today." do
    testing_list = Task_List.new("title")
    testing_list.add_task(Task.new("Test Title", "Test Decription", {:due_by_date => "2019-01-10"}))
    testing_list.add_task(Task.new("Test Title 2", "Test Decription", {:due_by_date => "2001-02-05"}))
    testing_list.add_task(Task.new("Test Title 3", "Test Decription", {:due_by_date => "2019-01-10"}))
    testing_list.add_task(Task.new("Test Title 4", "Test Decription"))
    expect(testing_list.due_today.length).to be 2
    expect(testing_list.due_today[1].title).to eq("Test Title 3")
  end
#
  it "I can list all the not completed items in order of due date." do
    testing_list = Task_List.new("title")
    testing_list.add_task(Task.new("Test Title", "Test Decription", {:due_by_date => "2019-01-02"}))
    testing_list.add_task(Task.new("Test Title 2", "Test Decription", {:due_by_date => "2001-02-05"}))
    testing_list.add_task(Task.new("Test Title 3", "Test Decription", {:due_by_date => "2019-01-10"}))
    # testing_list.add_task(Task.new("Test Title 4", "Test Decription"))
    expect(testing_list.get_list_of_incomplete_task.length).to be 3
    # expect(testing_list.get_list_of_incomplete_task[0].title).to eq("Test Title 2")
  end
#
#   it "With a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates." do
#     skip "Awaiting Test" do
#   end
#
# # Epic: Anniversary
#
#   it "I can create a to do item for an anniversary (a yearly recurring event)." do
#     skip "Awaiting Test" do
#   end
#
#   it "I can print an item for an anniversary with field labels and values." do
#     skip "Awaiting Test" do
#   end
#
#   it "With a TaskList with and without due dates and yearly recurring dates, I can list all the not completed items in order of due date and yearly dates for the current month." do
#     skip "Awaiting Test" do
#   end
#
#   it "With a TaskList with a collection of items with and without due dates and yearly recurring dates, I can list all the not completed items in order of due date and yearly dates for the current month, then the items without due dates." do
#     skip "Awaiting Test" do
#   end

end
