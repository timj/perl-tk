/*
  Copyright (c) 1995-2000 Nick Ing-Simmons. All rights reserved.
  This program is free software; you can redistribute it and/or
  modify it under the same terms as Perl itself.
*/

#include <EXTERN.h>
#include <perl.h>
#include <XSUB.h>

#include "tkGlue.def"

#include "pTk/tkPort.h"
#include "pTk/tkInt.h"
#include "pTk/tix.h"
#include "pTk/tixInt.h"
#include "pTk/tkVMacro.h"
#include "tkGlue.h"
#include "tkGlue.m"


DECLARE_VTABLES;
TixVtab     *TixVptr     ;
TixintVtab  *TixintVptr  ;

MODULE = Tk::InputO	PACKAGE = Tk

PROTOTYPES: DISABLE

void
inputo(...)
CODE:
 {
  XSRETURN(XSTkCommand(cv,1,Tix_InputOnlyCmd,items,&ST(0)));
 }

BOOT:
 {
  IMPORT_VTABLES;
  TixVptr     =     (TixVtab *) SvIV(perl_get_sv("Tk::TixVtab",5));
  TixintVptr  =  (TixintVtab *) SvIV(perl_get_sv("Tk::TixintVtab",5));
 }
