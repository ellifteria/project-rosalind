open("rosalind_dna.txt", "r") do file
    line = readline(file)
    a = 0
    c = 0
    g = 0
    t = 0
    for char in line
        if char == 'A'
            a = a + 1
        elseif char == 'C'
            c = c + 1
        elseif char == 'G'
            g = g + 1
        elseif char == 'T'
            t = t + 1
        end
    end
    println(a)
    println(c)
    println(g)
    println(t)
end
