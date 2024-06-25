module Basictypes 
    integer, parameter :: k6 = selected_int_kind(6)
    public k6, data_types_viewer
    contains 
        logical function data_types_viewer ()
        ! Integer Type 
            integer, parameter :: i1 = selected_int_kind(6)
            integer(kind=i1) :: i2
            character(len=50) :: integer_kind_descryption = "Kind is the no of bytes to store an integer"
        ! Real Type 
            integer, parameter :: dp1 = selected_real_kind(p=4,r=7) 
            integer, parameter :: dp2 = selected_real_kind(p=7,r=10) 
            integer, parameter :: dp3 = selected_real_kind(p=2,r=2) 
            real(kind=dp1) :: real1 
            real(kind=dp2) :: real2 
            real(kind=dp3) :: real3 
        ! Character and String
            character :: char1 = '8'
            character (len=100) :: BasicTypes="This is a Basic Type Note"
            character (len=100) :: str1="String as sequence of character"
        ! Complex Number Type 
            complex :: c1 =cmplx(41,2.54)
        ! Logical Type 
            logical :: b 

        ! Basic Array Type 
        ! Multi Dimentional Array 

        ! Taking Input from User 
            print *, "Enter an real"
            read(*,*) real1
        ! Print All 

            print *,  "Title : ", BasicTypes
            print *, "selected_int_kind(6) return : ", i1
            print *, "integer(kind=selected_int_kind(6)) :", i2

            print *, "kind description : ", integer_kind_descryption
            print *, "real(kind=selected_real_kind(p=4,r=7)) : ", real1
            print *, "real(kind=selected_real_kind(p=7,r=10)): ", real2
            print *, "real(kind=selected_real_kind(p=2.r=2)) : ", real3
            print *, "complex", c1
            print *, "character", char1
            print *, str1
            print *, "logical", b
            data_types_viewer = .true.
        end function
end module