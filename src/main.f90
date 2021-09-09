!include "/opt/intel/mkl/include/mkl_dfti.f90"
program main
use  variables
implicit none

write(*,*)"read file"

 call readfile

write(*,*)"read file done"

allocate(un_box(nbinst))
allocate(buf(jmax,kmax,lmax,5))
buf = 0.0
write(*,*)"FFT start"


do nj=1,jmax
do nl=1,lmax
write(*,*)mode,'/',nmode

	xp =  (dble(nj)-1.0)*dx
!	yp = 0.6*xp - 9.0d0
	yp = (dble(nl)-1.0)*dz

	do j=1,jmax
	do l=1,lmax

		if(-eps+xp < x(j,1,l) .and. x(j,1,l)<xp+eps .and. -eps+yp < z(j,1,l)   .and. z(j,1,l) < eps+yp ) then
			jpa = j
			lpa = l
			write(*,*)'(jpa,lpa)',jpa,lpa
		end if

	end do
	end do


do ii=1,nbinst
  un_box(ii) = p(jpa,lpa,ii)
end do

 call sub_fftoverlap


end do
end do



open(50,file='St_peak.q',form="unformatted")
write(50)jmax,kmax,lmax
write(50)2,0

do n=1,2
write(50)buf(:,:,:,n)
end do

close(50)

end program main

