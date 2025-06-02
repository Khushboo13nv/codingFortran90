! Website: https://projecteuler.net/archives
! Project Euler 
! Problem - 1

! ---------------------------------------------------------------------------
! If we list all the natural numbers below 10 that are multiples of 3 or 5, 
! we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of 
! all the multiples of 3 or 5 below 1000.
! ---------------------------------------------------------------------------

program proj_euler_p1
    implicit none
    integer :: i,iu
    real :: num, sum
     
    open(newunit=iu,file='output_p1',status='replace', action='write')
    do i = 1, 999
        if (Modulo(i,3) == 0 .or. Modulo(i,5) == 0) then
            write(iu,*) i
        end if
    end do
    
    close(iu)
    
    open(newunit=iu,file='output_p1',status='old', action='read')
        sum = 0.0
        do i=1, 466
            read(iu,*) num
            sum = sum + num
            
        end do
    close(iu)
    print*, 'Sum is =', sum
end program proj_euler_p1

