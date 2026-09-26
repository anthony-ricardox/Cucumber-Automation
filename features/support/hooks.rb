#global 
 Before do
     puts "estou sendo executado antes de cada cenario"
     @soma = 5 + 5    
 end

 After do
    puts "estou sendo executado depois de cada cenario"
        
 end

#isolado

Before '@comeco' do
    puts 'rodei apenas nesse cenario, com tag comeco'
end

Before '@final' do
    puts 'rodei apenas nesse cenario, com tag final'
end