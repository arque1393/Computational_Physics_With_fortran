module extream_1 
    contains 

    function data_types_viewer ()
        integer :: i1 
        real :: r1 
        complex :: c1 
        character :: char1 
        logical :: data_types_viewer
        read(*,*) i1
        print *, "integer", i1
        print *, "real", i1
        print *, "complex", i1
        print *, "character", i1
        print *, "logical", i1
        data_types_viewer = .true.
    end function
end module extream_1