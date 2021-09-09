module variables

    real(8) :: thetagT0, deltat, r0, rho0, p0, a0, deltat_nondim, theta,uj, pi
    real(8) :: uu, vv, ww, uvw, e, ds, dx ,dz
    real(8), allocatable,dimension(:)    :: rg,zg
    real(8), allocatable,dimension(:,:)  ::rhoT0moy,urT0moy,utT0moy,uzT0moy,pT0moy
    real(8), allocatable,dimension(:,:)  :: vortT0moy,dilatT0moy
    real(8), allocatable,dimension(:,:)  :: rhoT0,urT0,utT0,uzT0,pT0,eT0
    real(8), allocatable,dimension(:,:)  :: vortT0,dilatT0

 real(8), allocatable ::  work(:),x(:,:,:),y(:,:,:),z(:,:,:),un_box(:)
 
real(8),allocatable :: rho(:,:,:),u(:,:,:),v(:,:,:),w(:,:,:),p(:,:,:)

 real(8),allocatable :: r_FFT(:,:)


 real(8) xp,yp,eps,maxPSD
 real(8),allocatable :: buf(:,:,:,:)
 integer i,j,k,l,ii,n,nbs,m,mode,jkn,itr,nitr, nj, nl
 integer jmax,kmax,lmax,ary,nc,nst,nfi,intval
 integer lda,ldvt,ldu,lwork,info,nmode,ndim,mdim
 integer jpa, lpa, nz, nr, nbinst, interval, nb, nbg
 character filename*128
data gamma,nbs,nmode,eps/1.4e0,2600,2600,1.0d-2/ !/number of samplings,heat capacity ratio,number of modes 




end module
