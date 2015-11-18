!******************************************************************************!
!> @author Ang Zhu
!>   @date 11/17/2015
!******************************************************************************!
PROGRAM main
  USE CoarseMesh
  USE CMFD_Sweeper

  TYPE(CMFDSweeperType) :: myCS
  CALL myCS%sweep()


  WRITE(*,*)"hello multiCMFD"
  WRITE(*,*)"Hey, how are you doing, guys?"


!   CALL myCS%sweep()
ENDPROGRAM main
