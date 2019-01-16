c*************************************************************************
c                       NUCLEAR HYDRAULIC JUMP 
c*************************************************************************
c                ANALYTICAL QUARTIC FERRARI SOLUTIONS
c=========================================================================
        IMPLICIT REAL*8(A-H,O-Z)
21      format(8e16.8)
c=========================================================================
c       All fixed values in the calculations 
        pi = 3.1415926
        pow=1.0/3.0
        alfa=1.0  
        beta=2.0  
c=========================================================================
c       Calculation of the four roots of the quartic equation

        rad=0.010001

c      The four coefficients of the quartic equation (Hall & Knight) 
400     aa = 0.0
        bb = -1.0*beta
        cc = (-2.0*alfa)/(rad*rad) 
        dd = (3.0*alfa*alfa)/(rad*rad*rad*rad)

c       Discriminant of the auxiliary canonical cubic equation
        pee =((-1.0*bb*bb)/12.0) - dd
        que =((-1.0*bb*bb*bb)/108.0)+((dd*bb)/3.0)-((cc*cc)/2.0) 
        pee3 = pee/3.0 
        que2 = que/2.0 
        disc= (que2**2)+(pee3**3)

c      Checking Discriminant < 0 for three UNEQUAL real roots
       if (disc.lt.0.0) then
       go to 600
       else

c       Calculating 1 real root for positive discriminant
         eta1 = sqrt(disc) - que2 
         eta2 = -1.0*sqrt(disc)- que2  
         root = (eta1**pow)+(eta2**pow) + (bb/6.0) 
c         write(10,21) root, rad, disc
         root1 = root

         go to 500
        endif

C       Calculating 3 real roots for negative discriminant 
600     theta=acos((-1.0*que2)/(sqrt(-1.0*(pee3**3))))
        fac = 2.0*sqrt(-1.0*pee3) 
        root1= (fac*cos(theta/3.0))+(bb/6.0) 
c        write(20,21) root1, rad, disc
        root2= (fac*cos((theta+(2.0*pi))/3.0))+(bb/6.0)
c        write(30,21) root2, rad, disc
        root3= (fac*cos((theta+(4.0*pi))/3.0))+(bb/6.0)
c        write(40,21) root3, rad, disc

c+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
c        Four roots of the quartic equation

500     write(60,21) root1, rad, disc
         zeta = root1
        smalb = sqrt((zeta*zeta) - dd)
        smala = ((aa*zeta) - cc)/smalb
        smalasq = smala*smala 

         deesq1 = sqrt((smalasq) - (4.0*(zeta - smalb))) 
         deesq2 = sqrt((smalasq) - (4.0*(zeta + smalb))) 

        y1 = 0.5*(smala + deesq1) 
        y2 = 0.5*(smala - deesq1)
        y3 = 0.5*((-1.0*smala) + deesq2)
        y4 = 0.5*((-1.0*smala) - deesq2) 
        ys1 = y1*y1
        ys2 = y2*y2
        ys3 = y3*y3
        ys4 = y4*y4
        x1 = alfa/(y1*rad*rad)
        x2 = alfa/(y2*rad*rad)
        ac1 = sqrt(x1*((3.0*x1)-2.0))
        ac2 = sqrt(x2*((3.0*x2)-2.0))
c        write(80,21) ys1, ys2, ys3, ys4, rad
c        write(80,21) y1, y2, y3, y4, rad
        pro1 = y1*ac1 
        pro2 = y1*ac2 
c        write(80,21) pro1, pro2, rad 
        write(80,21) y1, y2, ac1, ac2, rad

c       Looping back 
         rad = rad + 0.00001
        if (rad.ge.2.1) then
         go to 700
           else
         go to 400
        endif

700     stop
        end

