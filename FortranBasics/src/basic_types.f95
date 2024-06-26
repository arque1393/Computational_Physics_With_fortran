module basic_types 
    use, intrinsic :: iso_fortran_env 
    implicit none
    integer, parameter :: k6 = selected_int_kind(6)
    public k6, data_types_viewer
    contains 
        logical function data_types_viewer ()
            ! Integer Type 
                integer :: i1
                integer(kind=4) :: i2
                character(len=50) :: integer_kind_descryption = "Kind is the no of bytes to store an integer"
            ! Real Type 
                integer, parameter :: dp1 = selected_real_kind(p=4,r=7) 
                integer, parameter :: dp2 = selected_real_kind(p=7,r=10) 
                integer, parameter :: dp3 = selected_real_kind(p=2,r=2) 
                real(kind=dp1) :: real1 = 505.0503
                real(kind=dp2) :: real2 = 505050.3030
                real(kind=dp3) :: real3 = 50.50
            ! Character and String
                character :: char1 = '8'
                character (len=100) :: BasicTypes="This is a Basic Type Note"
                character (len=100) :: str1="String as sequence of character"
            ! Complex Number Type 
                complex :: c1 =cmplx(41,2.54)
            ! Logical Type 
                logical :: b 

            ! Basic Array Type 
                integer :: int_arr(10) = [1,2,3,4,5,6,7,8,9,0]
                character(len=10) :: str_2d_arr(2,2) = reshape(["aaa","bbb","ccc","ddd"],[2,2])
            ! Dynamic Array 
                integer, allocatable :: dynamic_array(:,:,:)
            ! Taking Input from User 
                print *, "Enter Dimention"
                read(*,*) i2
                allocate(dynamic_array(i2,i2,i2))
                dynamic_array = reshape([(i1,i1=0,i2*i2*i2)],[i2,i2,i2])
            ! Print All 
                print *,  "Title : ", BasicTypes
                print *, "selected_int_kind(6) return : ", i1
                print *, "integer(kind=selected_int_kind(6)) :", i2
                print *, "kind description : ", integer_kind_descryption
                print *, "real(kind=selected_real_kind(p=4,r=7)) : ", real1
                print *, "real(kind=selected_real_kind(p=7,r=10)): ", real2
                print *, "real(kind=selected_real_kind(p=2.r=2)) : ", real3
                print *,""
                print *, "complex", c1
                print *, "character", char1
                print *, str1
                print *,""
                print *,"str_2d_arr"
                print *,str_2d_arr(:,2)
                print *,"dynamic_array"
                print *,dynamic_array

                print *, "logical", b
            data_types_viewer = .true.
        end function
        subroutine intrinsic_fortran_env_data_viewer()
            print *, "int8 : ", int8
            print *, "int16 : ", int16
            print *, "int32 : ", int32
            ! print *, "float32 : ", float32
            ! print *, "float64 : ", float64
            ! print *, "float128 : ", float128
        end subroutine intrinsic_fortran_env_data_viewer
end module