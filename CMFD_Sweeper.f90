!******************************************************************************!
!> @author Ang Zhu
!>   @date 11/18/2015
!******************************************************************************!
MODULE CMFD_Sweeper
  USE CoarseMesh

  IMPLICIT NONE

  TYPE :: CMFDSweeperType
    ! associated coarse mesh cell
    TYPE(CoarseMeshType),POINTER :: myCM => NULL()
    ! parent solver
    TYPE(CMFDSweeperType),POINTER :: myParentCS => NULL()
    ! dauther solver
    TYPE(CMFDSweeperType),POINTER :: mydaughterCS => NULL()

    CONTAINS
      PROCEDURE,PASS :: init => init_CMFDSweeperType
      PROCEDURE,PASS :: clear => clear_CMFDSweeperType
      PROCEDURE,PASS :: sweep => sweep_CMFDSweeperType
  ENDTYPE CMFDSweeperType
!
!===============================================================================
  CONTAINS
!>
    SUBROUTINE init_CMFDSweeperType(thisCS)
      CLASS(CMFDSweeperType),INTENT(INOUT) :: thisCS
    ENDSUBROUTINE init_CMFDSweeperType
!>
    SUBROUTINE clear_CMFDSweeperType(thisCS)
      CLASS(CMFDSweeperType),INTENT(INOUT) :: thisCS
    ENDSUBROUTINE clear_CMFDSweeperType
!>
    SUBROUTINE sweep_CMFDSweeperType(thisCS)
      CLASS(CMFDSweeperType),INTENT(INOUT) :: thisCS

    ENDSUBROUTINE sweep_CMFDSweeperType
ENDMODULE CMFD_Sweeper
