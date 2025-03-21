program rosalind_hamm
    integer :: io, error
    character (len=1000) :: dna1
    character (len=1000) :: dna2
    open(newunit=io, file="rosalind_hamm.txt", status="old", action="read")
        read(io, '(A)') dna1
        read(io, '(A)') dna2
    close(io)
    error = 0
    do i=1,1000
        if (dna1(i:i) /= dna2(i:i)) then
            error = error + 1
        end if
    end do
    write(*,*) error
end program rosalind_hamm