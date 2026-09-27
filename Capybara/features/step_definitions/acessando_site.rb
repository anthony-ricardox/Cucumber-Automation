Quando('acesso a url') do
  visit('/')
  sleep(5)
end

Então('eu verifico se estou na pagina correta') do
  expect(page).to have_current_path('https://www.instagram.com', url: true)
end