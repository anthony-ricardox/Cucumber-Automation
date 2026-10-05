Quando('clico em botoes') do
    # Acessa a página inicial do site.
    visit '/'

    # Clica no botão de login para entrar na área de autenticação.
    click_on 'Login'
    sleep(5)

    # Navega para a página dos cursos da Origamid.
    visit 'https://www.origamid.com/curso/'

    # Clica no curso de HTML e CSS para Iniciantes.
    click_on 'HTML e CSS para Iniciantes'
    sleep(5)

    # Retorna para a página de cursos e seleciona o curso de JavaScript.
    visit 'https://www.origamid.com/curso/'
    find('h4', text: 'JavaScript Completo ES6').click
    sleep(5)

    # Faz um duplo clique no título do curso de JavaScript.
    visit 'https://www.origamid.com/curso/'
    find('h4', text: 'JavaScript Completo ES6').double_click
    sleep(5)

    # Simula um clique com o botão direito no título do curso.
    visit 'https://www.origamid.com/curso/'
    find('h4', text: 'JavaScript Completo ES6').right_click
    sleep(5)

    # Volta para a página dos cursos e acessa o link do Instagram.
    visit 'https://www.origamid.com/curso/'
    click_link('Instagram')
    sleep(5)
end