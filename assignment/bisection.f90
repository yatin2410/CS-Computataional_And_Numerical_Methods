
!      Plotting velocity versus radius in stationary Bondi accretion

       module values 
       implicit none 
!      Declaring parameters and variables 
       double precision, parameter :: capem=2.0d+30, grav=6.67d-11 
       double precision, parameter :: ainf=1.0d+4, rs=7.0d+8, en=2.5 
       double precision, parameter :: rinit=1.0, rfin=3.0, rstep=0.01
       double precision, parameter :: vmin=0.0, vinit=1.0d+5
       double precision, parameter :: vstep1=0.001, vstep2=0.0001
       double precision :: eninv, engy, emdot, gravem, r 
       end module values 

       program bondi 
       use values 
       implicit none 
!      Declaring variables  
       double precision :: rlo, rlg, v1, v2, f, vs, vf
       double precision :: vfreesq, as, emachsq, vssq
!      Setting the system constants
       eninv=1.0/en
       engy=en*ainf*ainf
       gravem=grav*capem
       emdot=(5.0/8.0)*(ainf*gravem)**2.0
!      Opening files to store data
       open(25,file='bisec.out',status='unknown',form='formatted')
       open(26,file='sub.out',status='unknown',form='formatted')
       open(27,file='super.out',status='unknown',form='formatted')
!      The loop for the bisection routine
       rlo=rinit
       do while (rlo<=rfin)
       rlg=rlo+log10(4.0)
       r=(10.0**rlg)*rs
       v1=vinit 
30     v2=v1
20     v2=v2-vstep1
       if (v2<vmin) then
       go to 10
       endif
       if ((f(v1)*f(v2))>0.0) go to 20
       call bisec(v1,v2,vf)
       vs=vf
       vssq=vs*vs
       as=sqrt((emdot/(vf*r*r))**eninv)
       emachsq=(vs/as)*(vs/as)
       vfreesq=(2*gravem)/r 
       write(25,60) emachsq,vssq,vfreesq,rlg
       if (emachsq<1.0) then
       write(26,60) emachsq,vssq,vfreesq,rlg
       else
       write(27,60) emachsq,vssq,vfreesq,rlg
       endif
       v1=vf-vstep2
       go to 30
10     continue 
       rlo=rlo+rstep 
       end do 
60     format(4(1x,d11.5)) 
       end program bondi 

!      Subroutine for the bisection run
       subroutine bisec(v1,v2,vf)
       use values 
       implicit none 
!      Declaring variables  
       double precision, intent(in) :: v1, v2
       double precision, intent(out) :: vf 
       double precision :: vp1, vp2, f, vm, check 
       integer :: i 
       vp1=v1
       vp2=v2
!      The bisection iteration loop 
       do i=1,1000
       vm=0.50*(vp1+vp2)
       if ((f(vp1)*f(vm))>0.0) then
       vp1=vm
       else
       vp2=vm
       endif
       check=abs((vp1-vp2)/vp1)
       if (check<1.0d-10) go to 50
       end do 
50     continue
       vf=vp1
       return
       end subroutine bisec 

!      The function subroutine for the bisection run 
       double precision function f(v)
       use values 
       implicit none 
!      Declaring variables  
       double precision, intent(in) :: v 
       double precision :: term1, term2, term3 
!      Calculating f 
       term1=(v*v)/2.0
       term2=en*((emdot/(v*r*r))**eninv)-engy
       term3=((gravem)/r)
       f=term1+term2-term3
       return
       end function f 

