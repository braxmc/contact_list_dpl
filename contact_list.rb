# Build a contact list
# ✔️ Create a menu
  # ✔️ menu option, conditional
# ✔️ that allows a user to select
  #  ✔️ user choose option
# array of contacts
# 1) Create a contact
  # ask what to add
  # name
  # phone
  # add the contact to the array
# 2) View All Contacts
  # array Iterate through them also display each contact
  # string interpol
# 3) Exit
# The menu should loop until the user exits
require 'pry'

Contact = []

# def welcome
#   puts 'welcome to dpl contact list'
#   puts 'what is your name?'
#   @user_name = gets.strip
#   puts "Hello #{@user_name}"
# end
def menu
  puts '____________________________'
  puts 'Choose what you want to do:'
  puts '1) Create a contact'
  puts '2) To view all contacts'
  puts '3) Remove Contact'
  puts '4) Exit'
  puts '____________________________'
  user_choice = gets.strip.to_i
  # if the user choose 1
  if user_choice === 1
    puts 'create contact'
    create_contact
  elsif user_choice === 2
    # puts 'view all contacts'
    view_contacts
    # menu
  elsif user_choice === 3
    remove_contact
  elsif user_choice === 4
    puts 'Good Bye'
    exit
  else
    puts 'plz choose options 1-4'
    # recursion - call methods to be used over and over again
    menu
  end
end

def create_contact
  puts "enter name"
  name = gets.chomp
  puts "enter phone ex: 123-456-7890"
  phone = gets.chomp
  puts "enter email"
  email = gets.chomp
  new_contact = {name: name, phone: phone, email: email}
  Contact << new_contact
  puts "contact added"
  menu
end

def view_contacts
  if Contact.empty?
    puts "No contacts"
  else
  Contact.map.with_index{ |i, index|
    puts "#{index + 1} Contact info: #{i[:name]} #{i[:phone]} #{i[:email]}"
  }
  end
end

# Delete a contact

def remove_contact
  puts "Select an item's number to remove:"
  view_contacts
  user_choice = gets.chomp.to_i
  Contact.delete_at(user_choice - 1)
  menu
end
# Edit a contact

# welcome
menu
