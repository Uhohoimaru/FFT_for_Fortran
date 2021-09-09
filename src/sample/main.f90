!include "/opt/intel/mkl/include/mkl_dfti.f90"
program main
use  variables
implicit none

write(*,*)"read POD file"

 call readusv

write(*,*)"read POD file done"

allocate(un_box(nbs))

write(*,*)"FFT start"

do mode=1,nmode
write(*,*)mode,'/',nmode

do ii=1,nbs
  un_box(ii) = r_fft(ii,mode)
end do

 call sub_fftoverlap


end do



end program main

