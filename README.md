# Cucumber Automation

Projeto de estudos e praticas de automacao E2E com Ruby, Cucumber, Capybara e Selenium, seguindo BDD.

## Estrutura

```text
features/
	specs/                 # Cenarios escritos em Gherkin
	step_definitions/      # Implementacao dos passos
	support/               # Configuracao compartilhada
Gemfile                 # Dependencias Ruby
cucumber.yml            # Opcoes padrao do Cucumber
```

## Executar os testes

No PowerShell, a configuracao abaixo evita um problema de codepage do Cucumber no Windows com Ruby 4:

```powershell
$env:CUCUMBER_OUTPUT_ENCODING = 'cp1252'
bundle install
bundle exec cucumber
```

Para executar um arquivo especifico:

```powershell
bundle exec cucumber features/specs/primeiro_cenario.feature
```

As dependencias instaladas localmente em `vendor/bundle` nao fazem parte do versionamento.
