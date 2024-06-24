MODULE strings
    public split_string 
    contains 
   
    FUNCTION split_string(input_string, delimiter)
        CHARACTER(len=*), INTENT(IN) :: input_string
        CHARACTER(len=*), INTENT(IN) :: delimiter
        CHARACTER(len=:), ALLOCATABLE :: substrings(:)
        CHARACTER(len=:), ALLOCATABLE :: temp_string
    
        INTEGER :: i, n, start_index, end_index
        LOGICAL :: in_word
    
        ! Initialize variables
        n = 0
        in_word = .FALSE.
        start_index = 1
    
        ! Loop through characters in input_string
        DO i = 1, LEN_TRIM(input_string)
            IF (INDEX(delimiter, input_string(i:i)) == 0) THEN
                ! Not a delimiter
                IF (.NOT. in_word) THEN
                    ! Start of a new word
                    start_index = i
                    in_word = .TRUE.
                END IF
            ELSE
                ! Delimiter found
                IF (in_word) THEN
                    ! End of a word
                    end_index = i - 1
                    n = n + 1
                    temp_string = input_string(start_index:end_index)
                    CALL append_substring(substrings, n, temp_string)
                    in_word = .FALSE.
                END IF
            END IF
        END DO
    
        ! Check if the last character is not a delimiter
        IF (in_word) THEN
            n = n + 1
            temp_string = input_string(start_index:LEN_TRIM(input_string))
            CALL append_substring(substrings, n, temp_string)
        END IF
    
        ! Return the array of substrings
        split_string = substrings
    END FUNCTION split_string
    
    SUBROUTINE append_substring(array, n, string)
        CHARACTER(len=:), ALLOCATABLE, INTENT(INOUT) :: array(:)
        INTEGER, INTENT(INOUT) :: n
        CHARACTER(len=:), INTENT(IN) :: string
    
        ALLOCATE(array(n), source=string)
    END SUBROUTINE append_substring
    

END MODULE strings


