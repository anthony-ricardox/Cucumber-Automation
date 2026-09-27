<div align="center">

# Cucumber Automation

Automação de testes BDD com Ruby, Cucumber, Capybara, Selenium e RSpec.

</div>

## Estrutura

```text
features/
  specs/                 # Cenários escritos em Gherkin
  step_definitions/      # Implementação dos passos
  support/
    env.rb               # Configuração compartilhada do Cucumber
    hooks.rb             # Hooks executados antes/depois dos cenários
Capybara/
  features/
    specs/               # Cenários da suíte de navegador
    step_definitions/    # Passos da suíte de navegador
    support/             # Configuração e hooks da suíte de navegador
Gemfile                  # Dependências Ruby
cucumber.yml             # Perfis de execução do Cucumber
```

As duas suítes ficam no mesmo repositório, mas são executadas separadamente. Mantenha os cenários, steps e suporte de cada uma dentro da respectiva pasta `features/`.

## Configuração

Requisitos: Ruby, Bundler e Google Chrome para cenários de navegador.

```powershell
bundle install
```

Por padrão, o Capybara aponta para `http://localhost:3000`. Para usar outro endereço, defina `APP_HOST` antes de executar os testes:

```powershell
$env:APP_HOST = 'http://localhost:4000'
```

Marque cenários que usam navegador com a tag `@javascript`. Eles usam Selenium com Chrome headless; cenários sem essa tag não precisam abrir o navegador.

## Execução

```powershell
bundle exec cucumber
```

Para executar apenas cenários de navegador:

```powershell
bundle exec cucumber --tags @javascript
```

Para gerar o relatório HTML configurado em `cucumber.yml`:

```powershell
bundle exec cucumber -p html
```

Para executar a suíte futura de Capybara:

```powershell
bundle exec cucumber -p capybara
```

O relatório é gravado em `reports/cucumber.html` e não é versionado.
