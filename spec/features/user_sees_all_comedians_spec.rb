RSpec.describe 'Visitors' do
  it 'should show all comedians' do
    name = 'travis'
    age = 30
    comedian = Comedian.create(name: name, age: age)

    visit('/comedians')
    save_and_open_page
    expect(page).to have_content(name)
    expect(page).to have_content(age)
    expect(page).to have_content
  end
end
