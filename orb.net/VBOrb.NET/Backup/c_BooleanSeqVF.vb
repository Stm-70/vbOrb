Option Strict Off
Option Explicit On
<System.Runtime.InteropServices.ProgId("c_BooleanSeqVF_NET.c_BooleanSeqVF")> Public Class c_BooleanSeqVF
	Implements _cOrbValueFactory
	'Generated by IDL2VB v123. Copyright (c) 1999-2003 Martin.Both
	'Source File Name: ../include/CORBA.idl
	'Target File Name: c_BooleanSeqVF.cls
	
	
	
	'Helper to get different COM interface
	Friend Function thisOrbValueFactory() As _cOrbValueFactory
		thisOrbValueFactory = Me
	End Function
	
	Private Function cOrbValueFactory_newUninitValue() As _cOrbValueBase Implements _cOrbValueFactory.newUninitValue
		cOrbValueFactory_newUninitValue = New c_BooleanSeq
	End Function
End Class