module basic
    integer :: my_var_1= 933333
    private 
    public my_var_1, data_types_viewer,array_experiment, string_experiment
    contains 
    logical function data_types_viewer ()
        integer :: i1 
        logical :: b
        real :: r1 
        complex :: c1 
        character :: char1 
        
        read(*,*) i1

        b = .true.
        r1 = real(i1)
        c1 = cmplx(i1)
        char1 = char(i1)
        print *, "integer", i1
        print *, "real", r1
        print *, "complex", c1
        print *, "character", char1
        print *, "logical", b
        data_types_viewer = .true.
    end function

    subroutine string_experiment()
        character(len = 10) :: str = "0123456789"
        character(len = 100) :: str_concat = '0000'
        ! String Concatination 
        str_concat = str // '00000'
        print*,str_concat
        ! String Slicing 
        print *, str(2:8)
        print *, str
        
    end subroutine 


end module basic

