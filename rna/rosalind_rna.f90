program rosalind_rna
    integer :: io
    character (len=1000) :: input
    open(newunit=io, file="rosalind_rna.txt", status="old", action="read")
        read(io, *) input
    close(io)
    do i = 1,1000
        if (input(i:i) == 'T') then
            input(i:i) = 'U'
        end if
    end do
    write(*,*) input
end program rosalind_rna
