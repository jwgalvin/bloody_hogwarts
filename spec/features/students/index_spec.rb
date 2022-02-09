require 'rails_helper'

describe "index page for students" do

  before(:each)   do
    @joe = Student.create!(name: "Joe Galvin", age: 17, house: "Ferretus")
    @taryn = Student.create!(name: "Taryn Martin", age: 14, house: "Ravenclaw")
  end
  it "lists the students and name, age and house in 1 line" do
    visit '/students'
    save_and_open_page
    expect(page).to have_content("Name: Joe Galvin")
    expect(page).to have_content("Age: 14")
    expect(page).to have_content("House: Ravenclaw")
  end


end
