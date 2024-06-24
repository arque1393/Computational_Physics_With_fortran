program main 
    use strings
    implicit none

    ! logical :: b
    ! ! Calling a function 
    ! b = data_types_viewer()
    ! ! Calling a subroutine 
    ! call string_experiment()
    ! call one_d_array_slice()
    !! String Spliting 
    character(len=100)::str = '123456,897569,856965'
    str_split (str, ',')
end program
