def hello (person1, *persons)
    puts person1
    puts persons.inspect
end

hello :apoorv, *[:poojit, :udit]
