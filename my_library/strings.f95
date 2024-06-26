module strings
    public split_string 
    contains 
   
    function split_string(input_string, delimiter)
        character(len=*), intent(in) :: input_string
        character(len=*), intent(in) :: delimiter
        character(len=:), allocatable :: substrings(:)
        character(len=:), allocatable :: temp_string
    
        integer :: i, n, start_index, end_index
        logical :: in_word
    
        ! initialize variables
        n = 0
        in_word = .false.
        start_index = 1
    
        ! loop through characters in input_string
        do i = 1, len_trim(input_string)
            if (index(delimiter, input_string(i:i)) == 0) then
                ! not a delimiter
                if (.not. in_word) then
                    ! start of a new word
                    start_index = i
                    in_word = .true.
                end if
            else
                ! delimiter found
                if (in_word) then
                    ! end of a word
                    end_index = i - 1
                    n = n + 1
                    temp_string = input_string(start_index:end_index)
                    call append_substring(substrings, n, temp_string)
                    in_word = .false.
                end if
            end if
        end do
    
        ! check if the last character is not a delimiter
        if (in_word) then
            n = n + 1
            temp_string = input_string(start_index:len_trim(input_string))
            call append_substring(substrings, n, temp_string)
        end if
    
        ! return the array of substrings
        split_string = substrings
    end function split_string
    
    subroutine append_substring(array, n, string)
        character(len=:), allocatable, intent(inout) :: array(:)
        integer, intent(inout) :: n
        character(len=:), intent(in) :: string
    
        allocate(array(n), source=string)
    end subroutine append_substring
    

end module strings


