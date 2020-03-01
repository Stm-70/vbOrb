Attribute VB_Name = "mCBContainerDescription"
'Generated by IDL2VB v123. Copyright (c) 2000-2003 Martin.Both
'Source File Name: ../include/CORBA.idl

Option Explicit

'struct ::CORBA::Container::Description
Public Const TypeId As String = "IDL:omg.org/CORBA/Container/Description:1.0"

'Helper
Public Function TypeCode() As cOrbTypeCode
    On Error GoTo ErrHandler
    Dim oOrb As cOrbImpl
    Set oOrb = mVBOrb.VBOrb.defaultOrb()
    'Get previously created recursive or concrete TypeCode
    Dim oRecTC As cOrbTypeCode
    Set oRecTC = oOrb.getRecursiveTC(TypeId, 15) 'mCB.tk_struct
    If oRecTC Is Nothing Then
        'Create place holder for TypeCode to avoid endless recursion
        Set oRecTC = oOrb.createRecursiveTc(TypeId)
        On Error GoTo ErrRollback
        'Describe struct members
        Dim oMemSeq As cCBStructMemberSeq
        Set oMemSeq = New cCBStructMemberSeq
        oMemSeq.Length = 3
        Set oMemSeq.Item(0) = New cCBStructMember
        oMemSeq.Item(0).name = "contained_object"
        Set oMemSeq.Item(0).p_type = oOrb.createInterfaceTc("IDL:omg.org/CORBA/Contained:1.0", "Contained")
        Set oMemSeq.Item(1) = New cCBStructMember
        oMemSeq.Item(1).name = "kind"
        Set oMemSeq.Item(1).p_type = mCB.DefinitionKind_TypeCode()
        Set oMemSeq.Item(2) = New cCBStructMember
        oMemSeq.Item(2).name = "value"
        Set oMemSeq.Item(2).p_type = oOrb.createPrimitiveTc(11) 'VBOrb.TCAny
        'Overwrite place holder
        Call oRecTC.setRecTc2StructTc("Description", oMemSeq)
    End If
    Set TypeCode = oRecTC
    Exit Function
ErrRollback:
    Call oRecTC.destroy
ErrHandler:
    Call mVBOrb.VBOrb.ErrReraise(Err, "TypeCode")
End Function

'Helper, oAny.writeValue() -> struct.initByRead()
Public Function extractFromAny(ByVal oAny As cOrbAny) As cCBContainerDescription
    Dim oStruct As cCBContainerDescription
    Set oStruct = New cCBContainerDescription
    Call oStruct.initByAny(oAny)
    Set extractFromAny = oStruct
End Function

'Helper, struct.writeMe() -> oAny.initByReadValue()
Public Function cloneAsAny(ByVal oStruct As cCBContainerDescription) As cOrbAny
    On Error GoTo ErrHandler
    Dim oAny As cOrbAny
    Set oAny = New cOrbAny
    Call oAny.initByDefaultValue(TypeCode())
    Call oStruct.insertIntoAny(oAny)
    Set cloneAsAny = oAny
    Exit Function
ErrHandler:
    Call mVBOrb.VBOrb.ErrReraise(Err, "cloneAsAny")
End Function
