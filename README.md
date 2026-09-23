<div align="center">

# 🧪 Cucumber Automation Study Lab

  <p align="center">
    <strong>Projeto de Estudos de Automação de Testes BDD com Ruby, Cucumber e Capybara</strong>
  </p>

  <p align="center">
    <a href="#-sobre-o-projeto">Sobre</a> •
    <a href="#-tecnologias">Tecnologias</a> •
    <a href="#-estrutura-do-projeto">Estrutura</a> •
    <a href="#-como-executar">Como Executar</a> •
    <a href="#-boas-praticas">Boas Práticas</a>
  </p>

 <p align="center">
    <img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white" alt="Ruby" />
    <img src="https://img.shields.io/badge/Cucumber-23B974?style=for-the-badge&logo=cucumber&logoColor=white" alt="Cucumber" />
    <img src="https://img.shields.io/badge/Capybara_Gem-228B22?style=for-the-badge&logo=ruby&logoColor=white" alt="Capybara" />
    <img src="https://img.shields.io/badge/RSpec-EE6E73?style=for-the-badge&logo=rspec&logoColor=white" alt="RSpec" />
    <img src="https://img.shields.io/badge/License-MIT-007ACC?style=for-the-badge" alt="License" />
  </p>

---

## 📌 Sobre o Projeto

Este repositório foi desenvolvido para fins de **estudo e consolidação de conhecimentos** em Automação de Testes End-to-End (E2E) e testes de comportamento (BDD - *Behavior-Driven Development*). 

O foco principal do laboratório é aplicar boas práticas na escrita de cenários em linguagem natural utilizando a sintaxe **Gherkin**, aliada ao poder do ecossistema **Ruby** com **Cucumber**, **Capybara** e **RSpec**.

---

## 🚀 Tecnologias

A stack de testes utilizada no projeto consiste em:

| Tecnologia | Descrição |
| :--- | :--- |
| **[Ruby](https://www.ruby-lang.org/)** | Linguagem de programação base para construção dos scripts de automação. |
| **[Cucumber](https://cucumber.io/)** | Framework de testes focado em BDD para mapeamento dos cenários em Gherkin. |
| **[Capybara](https://github.com/teamcapybara/capybara)** | Biblioteca para simulação de interações no navegador web. |
| **[RSpec Expectations](https://rspec.info/)** | Biblioteca de asserções/validações dos cenários de teste. |
| **[Bundler](https://bundler.io/)** | Gerenciador de dependências e isolamento de gems no escopo do projeto. |

---

## 🏗️ Fluxo de Funcionamento (Arquitetura)

```mermaid
flowchart TD
    A[📄 Cenário Gherkin .feature] -->|1. Mapeia o comportamento| B[⚙️ Step Definitions .rb]
    B -->|2. Executa as ações no browser| C[🌐 Capybara / Selenium]
    B -->|3. Valida os resultados| D[✅ RSpec Assertions]
