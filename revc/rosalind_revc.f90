program rosalind_revc
    integer :: io, maxlen
    character(len=1000) :: input
    character(len=1000) :: output
    character :: char, newchar
    open(newunit=io, file="rosalind_revc.txt", status="old", action="read")
        read(io,*) input
    close(io)
    maxlen = 1000
    do i=1,maxlen
        char = input(i:i)
        if(char == 'A') then
            newchar = 'T'
        else if (char == 'C') then
            newchar = 'G'
        else if (char == 'G') then
            newchar = 'C'
        else if (char == 'T') then
            newchar = 'A'
        else
            newchar = ''
        end if
        output(maxlen+1-i:maxlen+1-i) = newchar
    end do
    write(*,*) output
end program rosalind_revc
