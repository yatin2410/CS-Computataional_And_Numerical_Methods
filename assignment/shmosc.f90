
!      Programme for Runge-Kutta algorithm of the harmonic 
!      oscillator as it is to be seen in inflationary cosmology
       program ruku
       implicit none
!      Declaring variables and parameters 
       real, parameter :: dt=0.0001, tlim=50.0
       real :: x0, v0, x1, v1, t 
       real :: ak1, ak2, ak3, ak4, bk1, bk2, bk3, bk4, f  
!      Opening files to store data
!       open(unit=30,file='infla.out',status='unknown',form='formatted')
!      Setting initial value
       x0=1.0
       v0=0.0
       t=0.0 
!      The fourth-order Runge-Kutta routine loop 
       do while (t<=tlim) 
       ak1=dt*v0
       ak2=dt*(v0+(ak1/2.0))
       ak3=dt*(v0+(ak2/2.0))
       ak4=dt*(v0+ak3)
       x1=x0 + (ak1/6.0)+(ak2/3.0)+(ak3/3.0)+(ak4/6.0)
       bk1=dt*f(x0,v0)
       bk2=dt*f((x0+(bk1/2.0)),(v0+(bk1/2.0)))
       bk3=dt*f((x0+(bk2/2.0)),(v0+(bk2/2.0)))
       bk4=dt*f((x0+bk3),(v0+bk3))
       v1=v0 + (bk1/6.0)+(bk2/3.0)+(bk3/3.0)+(bk4/6.0)
       write(30,*) x1,v1,t
       x0=x1
       v0=v1
       t=t+dt 
       end do 
!      The loop ends 
50     format(4(1x,d11.5))
       end program ruku
       
!      The function subroutine
       real function f(y,z)
       implicit none 
!      Declaring variables and parameters 
       real, intent(in) :: y, z 
       real :: pot, restore, aitch, damp 
       real, parameter :: omegsq=1.0, alpha=0.03
       real, parameter :: dee=-1.0, bee=0.03
!       pot=(0.5*omegsq*y*y)+((beta/3.0)*y*y*y)
       restore= (omegsq*y)+ (dee*y*y)
       aitch=(alpha*y) + (bee*z)
       f= -1.0*(restore + aitch) 
       return
       end function f 

