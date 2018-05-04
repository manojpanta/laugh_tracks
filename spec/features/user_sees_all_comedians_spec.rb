RSpec.describe 'Visitors' do
  it 'should show all comedians' do
    name = 'travis'
    age = 30
    comedian = Comedian.create(name: name, age: age)

    visit('/comedians')
    expect(page).to have_content(name)
    expect(page).to have_content(age)
  end

  it 'should show average age for comedians' do
    name = 'travis'
    age = 30
    comedian = Comedian.create(name: name, age: age)
    comedian = Comedian.create(name: name, age: age)
    comedian = Comedian.create(name: name, age: age)

    visit('/comedians')
    expect(page).to have_content('Average_age = 30.0')
  end

  it 'should show comedian with age of 34' do
    name = 'travis'
    age = 34
    comedian = Comedian.create(name: name, age: age)
    comedian = Comedian.create(name: name, age: age)
    comedian = Comedian.create(name: name, age: age)

    visit('/comedians')
    save_and_open_page
    expect(page).to have_content('Average_age = 30')
  end
end
