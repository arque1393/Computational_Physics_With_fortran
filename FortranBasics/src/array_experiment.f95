module array_experiment 

contains 
    subroutine one_d_array_slice ()  
    
        ! 1D integer array
        integer, dimension(10) :: array_1D_1
        integer :: array_1D_2(10)
        print*,array_1D_1(:)
        ! Array initializer 
        array_1D_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  
        print*,array_1D_1

        ! Implied do loop constructor
        array_1D_1 = [(i, i = 1, 10)] 
        print*,array_1D_1

        ! Array slice and manipulate 
        array_1D_1(:) = 0
        print*,array_1D_1

        array_1D_1(1:5) = 1 
        print*,array_1D_1

        array_1D_1(6:) = 56
        print*,array_1D_1

        array_1D_2(:) = 0
        array_1D_2(1::2) = 7

        print*,array_1D_2

    end subroutine 

    subroutine multi_dimentional_array()
        
    end subroutine 
end module array_experiment