module string_operations
    public string_op
    contains 
        subroutine string_op()
            character(len = 40) :: string = "String is just a sequence of character data type."
            character(len=7) :: my_name = "Arque"
            character(len=100) :: big_str
            character(len=10) :: small_str = "Quanta"
            print *,"Title : ", string 
            ! Function 1 trim 
            print *, "My name without trim ", my_name
            print *, "My name trim ", trim(my_name)
            ! string concatinate operator is written as // 
 
            big_str = "Chain of " // trim(small_str) // "Looks like (" &
                // trim(small_str) // " " // trim(small_str) // ".... )"

            print *, big_str
        end subroutine string_op
end module