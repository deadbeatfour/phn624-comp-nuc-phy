real*8 function simpson(x,y,n)
      implicit real*8 (a-h, o-z)
      dimension :: x(n), y(n)

      sum = 0.0d0
      h = dabs(x(n) - x(1))/dfloat(n-1)
      do i=1, n/2 ! Since n is odd, n/2 is the same as (n-1)/2
                sum = sum + y(2*i-1) + 4.0d0*y(2*i) + y(2*i+1)
!                write(*,*) i, x(i), y(i)
      end do
      simpson = sum*h/3.0d0
end function simpson
      
      


