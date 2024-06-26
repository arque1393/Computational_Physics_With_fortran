program string_to_matrix
    implicit none
    character(100) :: input_string
    integer ::  my_integer , my_integer2
    integer :: matrix(3,3)
    integer :: i, j, k
    input_string = "125,858"


    read(input_string, *) my_integer
    read(input_string, *) my_integer2
    
    print *, my_integer,my_integer2
    ! ! Read the input string
    ! print *, "Enter the input string:"
    ! read(*, '(A)') input_string

    ! ! Initialize indices for input string
    ! k = 1

    ! ! Convert the string to matrix
    ! do i = 1, 3
    !     do j = 1, 3
    !         read(input_string(k:k+1), *) matrix(i,j)
    !         k = k + 3 ! Move to next number in string
    !     end do
    ! end do

    ! ! Print the matrix
    ! print *, "The matrix is:"
    ! do i = 1, 3
    !     write(*, '(3I5)') (matrix(i, j), j = 1, 3)
    ! end do

end program string_to_matrix
