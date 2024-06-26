module iteration_and_control 
public :: if_view , do_loop_view 
contains 
subroutine if_view 
    implicit none 
    integer:: n1, n2, n3
    print *, " Title Three number Max"
    write (*,*) 'Enter 3 numbers'
    read(*,*) n1,n2,n3
    if (n1>n2 .and. n1 >n3 ) then 
        print *, n1, " is max"
    else if (n2 > n3) then 
        print *, n2, " is largest"
    else 
        print *, n3, " is largest"
    end if




end subroutine if_view

subroutine operator_view
    character(len=2) :: tab = achar(9)//achar(9)
    character :: nline = achar(10)
    print*,"There multiple lis of Operator"
    print*,"Comparision Operator "

    print*,"Equals to "//tab//"=="//tab//".eq."
    print*,"Not Equals to "//tab//"/="//tab//".ne."
    print*,"Greater than "//tab//">"//tab//".gt."
    print*,"Greater Equals"//tab//">="//tab//".ge."
    print*,"Lesser than "//tab//"<"//tab//".lt."
    print*,"Lesser Equals"//tab//"<="//tab//".le."//nline
    print*,"Boolean or Logical Operator "
    print*,"Logical and "//tab//".and."
    print*,"Logical or "//tab//".or."
    print*,"Logical not "//tab//".not."

end subroutine 

subroutine do_loop_view
    integer(kind=8)::a=40*999990
    do while(a>0)
        print*,a
        a=a/10
    end do


end subroutine do_loop_view
end module 