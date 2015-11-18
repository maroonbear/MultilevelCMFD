!******************************************************************************!
!> @author Ang Zhu
!>   @date 11/18/2015
!******************************************************************************!
MODULE CoarseMesh

  IMPLICIT NONE

  TYPE :: CoarseMeshType
    !> # of coarse mesh cell
    INTEGER :: nCell
    !> # of energy group
    INTEGER :: nGrp
    TYPE(CoarseMeshTYPE),POINTER :: myParentCM => NULL()
    TYPE(CoarseMeshTYPE),POINTER :: mydaughterCM => NULL()


    !flux(cellstt:cellstp,nGrp)
    REAL(8),ALLOCATABLE :: flux(:,:)

     !> The group-dependent transport x/s, SIZE(cellstt:cellstp,nGrp)
    REAL(8),ALLOCATABLE :: xstr(:,:)
    !> The group-dependent removal x/s, SIZE(cellstt:cellstp,nGrp)
    REAL(8),ALLOCATABLE :: xsrm(:,:)
    !> The group-dependent fission energy distribution (Chi), SIZE(cellstt:cellstp,nGrp)
    REAL(8),ALLOCATABLE :: xsch(:,:)
    !> The nu-fission x/s, SIZE(cellstt:cellstp,nGrp)
    REAL(8),ALLOCATABLE :: xsnf(:,:)
    !> The P0 scattering matrix, SIZE(cellstt:cellstp, nGrpto, nGrpfrom)
    REAL(8),ALLOCATABLE :: xssc(:,:,:)

    CONTAINS
      PROCEDURE,PASS :: init => init_CoarseMeshType
      PROCEDURE,PASS :: clear => clear_CoarseMeshType
      PROCEDURE,PASS :: projection
      PROCEDURE,PASS :: prolongation
  ENDTYPE CoarseMeshType
!
!===============================================================================
  CONTAINS
!>
    SUBROUTINE init_CoarseMeshType(thisCM)
      CLASS(CoarseMeshType),INTENT(INOUT) :: thisCM
    ENDSUBROUTINE init_CoarseMeshType
!>
    SUBROUTINE clear_CoarseMeshType(thisCM)
      CLASS(CoarseMeshType),INTENT(INOUT) :: thisCM
    ENDSUBROUTINE clear_CoarseMeshType
!>
    SUBROUTINE projection(thisCM)
      CLASS(CoarseMeshType),INTENT(INOUT) :: thisCM
    ENDSUBROUTINE projection
!>
    SUBROUTINE prolongation(thisCM)
      CLASS(CoarseMeshType),INTENT(INOUT) :: thisCM
    ENDSUBROUTINE prolongation

ENDMODULE CoarseMesh
