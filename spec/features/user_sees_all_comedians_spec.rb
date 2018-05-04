RSpec.describe 'Visitors' do
  it 'should show all comedians' do
    comedian = Comedian.create(name: travis, age: 30)

    visit('/comedians')
    save_and_open_page

    expect(page).to have_content(attributes)
  end
end
