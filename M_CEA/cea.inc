integer MAXNGC, NCOL, Nomit, Nonly, Nplt, Nsert, lplt

REAL*8 Trace

Parameter(MAXNGC = 600)
Parameter(NCOL = 8)

integer IOINP, IOOUT
Parameter(IOINP = 7)
Parameter(IOOUT = 8)

Logical Massf, short, Siunit, Debug(NCOL)
Logical Newr
character*200 Pfile