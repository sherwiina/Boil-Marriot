	program Boilmarriot
	pi = acos(-1.)


	! enter
	print*,"Number Of Particles"

	read*,l

	pause

	print*,"a b c d t v time"
	
      read*,a,b,c,d,t,v,time

	
	print*,"LETS GO"

	pause

	n= 0
	
	!!!!! DO BOZORGGGGGGGGGGGGGG
	Do i=1,l
	tt = 0


	! TOLID ZARE VA HAREKAT					.............................




	x0 = 0.5*rand() - (0.25)
	y0 = 0.5*rand() - (0.25)
	x = x0
	y = y0
	tet0 = 2.*pi*rand()



	do while (y>a.and.y<c.and.x<b.and.x>d)
	x0 = x
	y0 = y 
      x = x0 + v*t*cos(tet0)
	y = y0 + v*t*sin(tet0)
	

	enddo


	! Barkhorde A
	if (y<=a) then

			if (x>x0) then
			jahat = +1
			tet0 = (2.*pi) - tet0
			endif
			
			if(x<x0) then
			jahat = -1
			tet0 = tet0 - (pi)
			endif
	y0 = a
	y = y0
	x0 = x
	tetz = 1
			
	endif			

	! Barkhorde A


	! Barkhorde B


	if (x>=b) then

			if(y>y0) then
			jahat = +2
			tet0 = (pi/2.) - tet0
			endif
			if(y<y0) then
			jahat = -2
			tet0 = tet0 - (3.*pi/2)
			endif

	x0 = b
	x = x0
	y0 = y
	tetz = 2

	endif

	!BARKHORDE B

	!Barkhorde C


	if (y>=c) then

			if(x>x0) then
			jahat = +3
			tet0 = tet0
			endif	

			if(x<x0) then
			jahat = -3
			tet0 = pi - tet0	
			endif

	y0 = c
	y = y0
	x0 = x
	tetz = 1
	endif

	!Barkhorde C



	!Barkhorde D
	if (x<=d) then
			
				if(y>y0) then
				jahat = +4
				tet0 = tet0 - (pi/2.)
				endif

				if (y<y0) then
				jahat = -4
				tet0 = (3*pi/2.) - tet0
				endif

	x0 = d
	x = x0
	y0 = y
	tetz = 2
	endif

	!Barkhorde D



	!ZARRREEEE TOLIIIDDD SHODDDEEEE AST
			
      








	
	
	
	
	
	
     
     
     
     
     
     
     
    !enter

	n = n + 1
	
     
      do while (tt<=time)
	
	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON B
	if (x>=b) then
	x0 = b
	x  = b
	n = n + 1
	
		if (tetz == 1) then

	    tet0 = (pi/2.) - tet0
		endif
		if (tetz== 2) then
		
		tet0 = tet0
		endif

						if(y>y0) then
						jahat = +2
						endif
						if (y<y0) then 
						jahat = -2
						endif
	tetz = 2
	endif
	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON B


	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON C

	if (y>=a) then
	y = a
	y0= a
	n = n + 1

		 	  if (tetz == 2) then

			  tet0 = (pi/2.) - tet0
			  endif
		      if (tetz == 1) then
		
		      tet0 = tet0
		      endif
									if (x>x0) then
									jahat = +3
									endif
									if (x<x0) then
									jahat = -3
									endif	

	  
	tetz = 1
	endif
	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON C

	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON D

	if (x<=d) then
	x = d
	x0= d
	n = n + 1

		 	  if (tetz == 1) then

			  tet0 = (pi/2.) - tet0
			  endif
		      if (tetz == 2) then
		
		      tet0 = tet0
		      endif
									if (y>y0) then
									jahat = +4
									endif
									if (y0>y) then
									jahat = -4
									endif	

	  
	tetz = 2
	endif
	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON D



	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON A

	if (y<=a) then
	y = a
	y0= a
	,

		 	  if (tetz == 2) then

			  tet0 = (pi/2.) - tet0
			  endif
		      if (tetz == 1) then
		
		      tet0 = tet0
		      endif
									if (x>x0) then
									jahat = +1
									endif
									if (x0>x) then
									jahat = -1
									endif	

	  
	tetz = 1
	endif
	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON A





	! HARKAT AZ C
	if (jahat == +3) then
	x0 = x
	y0 = y
	call Movec1 (x0,y0,tet0,v,t,x,y)
	
	tt = tt + t
	endif
	if (jahat == -3) then
	x0 = x
	y0 = y
	call MoveC2 (x0,y0,tet0,v,t,x,y)
	
	tt = tt + t
	endif
	! Harkat AZ C
 

	
     
     
     
      ! HARKAT AZ B
	if (jahat == +2) then
	x0 = x
	y0 = y
	call MoveB1 (x0,y0,tet0,v,t,x,y)
	
	tt = tt + t
	endif
	if (jahat == -2) then
	x0 = x
	y0 = y
	call MoveB2 (x0,y0,tet0,v,t,x,y)
	
	tt = tt + t
	endif
	! Harkat AZ B





	!Harkat AZ A
	if (jahat == +1) then

	x0 = x
	y0 = y
	call MoveA1 (x0,y0,tet0,v,t,x,y)
	
	
	tt = t + tt

	endif

	if (jahat == -1) then

	x0 = x
	y0 = y
	call MoveA2 (x0,y0,tet0,v,t,x,y)
	
	tt = t + tt
	endif
	
     
      !Harkat AZ A

	
       !Harkat AZ D
	if (jahat == +4) then

	x0 = x
	y0 = y
	call MoveD1 (x0,y0,tet0,v,t,x,y)
	
	
	tt = t + tt
	
	endif

	if (jahat == -4) then

	x0 = x
	y0 = y
	call MoveD2 (x0,y0,tet0,v,t,x,y)
	
	tt = t + tt
	endif
	!Harkat AZ D 



	enddo

	enddo

	print*, n
	pause
	

	stop
	end



	subroutine MoveA1 (x0,y0,tet0,v,t,x,y)

	x = x0 + v*t*cos(tet0)
	y = y0 + v*t*sin(tet0)
	return
	end

	subroutine MoveA2 (x0,y0,tet0,v,t,x,y)

	x = x0 - v*t*cos(tet0)
	y = y0 + v*t*sin(tet0)
	return
	end


	subroutine MoveB1 (x0,y0,tet0,v,t,x,y)

	x = x0 - v*t*sin(tet0)
	y = y0 + v*t*cos(tet0)
	return
	end

	subroutine MoveB2 (x0,y0,tet0,v,t,x,y)

	x = x0 - v*t*sin(tet0)
	y = y0 - v*t*cos(tet0)
	return
	end

	
	subroutine MoveC1 (x0,y0,tet0,v,t,x,y)

	x = x0 + v*t*cos(tet0)
    	y = y0 - v*t*sin(tet0)
	return
	end

	subroutine MoveC2 (x0,y0,tet0,v,t,x,y)

  	x = x0 - v*t*cos(tet0)
    	y = y0 - v*t*sin(tet0)
	return
	end


	subroutine MoveD1  (x0,y0,tet0,v,t,x,y)
	
	x = x0 + v*t*sin(tet0)
	y = y0 + v*t*cos(tet0)
	return
	end


	subroutine MoveD2  (x0,y0,tet0,v,t,x,y)
	
	x = x0 + v*t*sin(tet0)
	y = y0 - v*t*cos(tet0)
	return
	end



