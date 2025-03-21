program rosalind_dna
    integer :: io, a, c, g, t
    character (len=1000) :: input
    character :: char
    open(newunit=io, file="rosalind_dna.txt", status="old", action="read")
        read(io, *) input
    close(io)
    a = 0
    c = 0
    g = 0
    t = 0
    do i = 1,1000
        char = input(i:i)
        if (char == 'A') then
            a = a + 1
        else if (char == 'C') then
            c = c + 1
        else if (char == 'G') then
            g = g + 1
        else if (char == 'T') then
            t = t + 1
        end if
    end do
    write(*,*) a
    write(*,*) c
    write(*,*) g
    write(*,*) t
end program rosalind_dna
