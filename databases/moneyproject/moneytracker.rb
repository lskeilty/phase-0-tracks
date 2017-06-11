# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("moneys.db")
db.results_as_hash = true

#initiate creating a table if table does not exist
create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS moneys(
    id INTEGER PRIMARY KEY,
    expense_name VARCHAR(255),
    dollars_spent INT,
    expense_date VARCHAR(255),
    expense_category VARCHAR(255)
  );
SQL

# create a money table if not there already
db.execute(create_table)

#test expense
#db.execute("INSERT INTO moneys (expense_name, dollars_spent, expense_date, expense_category) VALUES ('Starbucks', 4.97, '06/11/2017', 'Food/Beverage')")


# Method for adding an expense
def add_expense(database, expense_name, dollars_spent, expense_date, expense_category)
  database.execute("INSERT INTO moneys (expense_name, dollars_spent, expense_date, expense_category) VALUES (?, ?, ?, ?)", [expense_name, dollars_spent, expense_date, expense_category])
end

# Method to display last 10 expenses
def last_ten(database)
  puts "Last ten expenses:"
  expenditures = database.execute("SELECT * FROM moneys ORDER BY expense_date DESC")
  expenditures[0..9].each do |entry|
    puts "Date:#{entry['expense_date']}, Expense:#{entry['expense_name']}, Spent:#{entry['dollars_spent']},  Category:#{entry['expense_category']}"
  end
end

# Options for user
def print_menu
  puts "Options:"
  puts "1. Enter Expense"
  puts "2. See last ten expenses"
  puts "3. Exit"
end

# UI

puts "Welcome to the Expense Tracker"

exit_program = false
until exit_program

  print_menu
  puts "Please select a menu item number 1-3."
  option_selection = gets.chomp

  if option_selection == "1"
    puts "Please enter the name of the expense"
    name_entry = gets.chomp

    puts "Please enter the dollars spent on expense (ex: 10.59)"
    dollar_entry = gets.chomp.to_i

    puts "Please enter the date of the expense (ex: MM-DD-YYYY)"
    date_entry = gets.chomp

    puts "What is the category of the expense (Food/Beverage, Transportation, Rent, Self-Care, Entertainment, Charity, Debt, Clothing"
    category_entry = gets.chomp

    add_expense(db, name_entry, dollar_entry, date_entry, category_entry)
    puts "Your expense of #{name_entry} in the amount of #{dollar_entry} on the date of #{date_entry} in the category of #{category_entry} has been recorded!"

  elsif option_selection == "2"
    print last_ten(db)

  elsif option_selection == "3"
    exit_program = true

  else
    puts "Invalid response, please re-enter an option number"
  end
end

puts "Thanks for using the Expense Tracker!"
