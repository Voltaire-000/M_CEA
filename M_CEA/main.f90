program hello
    implicit none
    include 'cea.inc'
    
    character*15 ensert(20)
    character*200 infile, ofile
    character*196 prefix
    logical caseok, ex, readok
    integer i, inc, iof, j, ln, n
    integer index
    real*8 xi, xln
    real*8 DLOG
    
    Save caseok, ensert, ex, i, inc, infile, Pfile, iof, j, ln, n, ofile, prefix, readok, xi, xln
    
    Write(*, 99001)
    Read(*, 99002)prefix
    ln = INDEX(prefix, ' ') -1
    infile = prefix(1:ln)//'.inp'
    ofile = prefix(1:ln)//'.out'
    Pfile = prefix(1:ln)//'.plt'
    INQUIRE (FILE = infile, EXIST = ex)
    if(.NOT.ex)then
        print *, infile, 'Not found'
        GOTO 400
    endif
    if(ex)then
        print *, infile, 'found the file'
    endif
    readok = .true.
    Newr = .false.
    
    
        
400 Stop        
    
    
99001 FORMAT(//'Enter input file name'//)
99002 FORMAT(a)
99003 FORMAT(1X, A16, 'Inserted')
99004 FORMAT (/'Warning', A16, 'Not found for insertion')
!99005 FORMAT(lx, lp, 20E12.4)      
    end program