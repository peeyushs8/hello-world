Program LinearEqns
  ! solve matrix eqn A1*x=b by LAPACK
  Implicit none

  ! define
  double precision :: A1(3,3), b1(3)
  integer :: i1, pivot1(3), ok
  
  ! Define matrix A1
  A1(1,:)=(/3, 1, 3/)
  A1(2,:)=(/1, 5, 9/)
  A1(3,:)=(/2, 6, 5/)
  
  ! Define vector b1
  b1(:)=(/-1, 3, -3/)
  !b1(:)=(/2, 2, 9/)

  ! solve using LAPACK subroutine DGESV
  call DGESV(3, 1, A1, 3, pivot1, b1, 3, ok)

  ! print the solution x1
  do i1=1, 3
    write(*,9) i1, b1(i1)
  end do  

9 format('x1[', i1, ']= ', f5.2)  
end program LinearEqns
