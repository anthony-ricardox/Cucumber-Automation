Quando('acesso a url de botoes') do
  visit('/')
end

Então('verifico se encontrei os elementos') do
   #all busca todos os elementos que contenham all
   page.all(:css, '.x1i10hfl')
    #busca elemento mapeado
    find('#_R_c9l6neappb6amH1_')
   #busca pelo id
    find_by_id('_R_c9l6neappb6amH1_')
   #busca pelo botao
   #find_buttom(class: '')

   #busca pelo primeiro elemnto que tenha o elemnto mapeado
   first('.x1i10hfl')
   
    #busca pelo link
   #find_link(href: '')
end