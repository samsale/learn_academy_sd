require 'date'

# creating a task class

class Task

  def initialize (title, description = nil, params = {})
    @title = title
    @description = description
    @complete = false
    @due_by_date = params.fetch(:due_by_date, nil)
  end

# Method to update a task to completed
  def completed
    if @complete == false
      @complete = true
  end
end

def status
  if @complete == false
    "#{@title} - Is still active"
    return false
  else
    "#{@title} - Is Complete"
    return true
  end
end

def due_by
  if @due_by_date == nil
    "#{@title} - has no due by date."
  else
    d = Date.parse(@due_by_date)
    "#{@title} - is due by #{d.strftime('%a %d %b %Y')}"
  end
end

  attr_reader :title, :description, :complete, :due_by_date
end

class Task_List
  def initialize title
    @title = title
    @list_of_tasks = []
  end

  def add_task task
    @list_of_tasks << task
  end

  def get_list_of_completed_task
    completed_array = []
    @list_of_tasks.each do |task|
      if task.complete
        completed_array << task
      end
    end
    completed_array
  end


  def get_tasks_with_due_by_date
    due_date_array = []
    @list_of_tasks.each do |task|
      if task.due_by_date != nil
        due_date_array << task
      end
    end
    due_date_array
  end

  def due_today
    due_today_arr = []
    today = Date.today
    today_as_string = today.strftime("%Y-%m-%d")
    @list_of_tasks.each do |task|
      if !task.complete && task.due_by_date == today_as_string
        due_today_arr << task
      end
    end
    due_today_arr
  end

  def get_list_of_incomplete_task
    incomplete_array = []
    incomplete_array_with_no_due_date = []
    @list_of_tasks.each do |task|
      if !task.complete
        if  task.due_by_date != null
        incomplete_array << task
      else
        incomplete_array_with_no_due_date << task
      end
    end
    end
    incomplete_array.sort_by!{ |hash| Date.parse hash.due_by_date }
    ar.select(&:date).sort_by(&:date) + ar.reject(&:date)
    incomplete_array
  end

  attr_reader :title, :list_of_tasks, :list_of_completed_tasks
end
