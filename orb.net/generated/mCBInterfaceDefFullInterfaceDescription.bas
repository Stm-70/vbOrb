Attribute VB_Name = "mCBInterfaceDefFullInterfaceDescription"
'Generated by IDL2VB v123. Copyright (c) 2000-2003 Martin.Both
'Source File Name: ../include/CORBA.idl

Option Explicit

'struct ::CORBA::InterfaceDef::FullInterfaceDescription
Public Const TypeId As String = "IDL:omg.org/CORBA/InterfaceDef/FullInterfaceDescription:1.0"

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
        oMemSeq.Length = 8
        Set oMemSeq.Item(0) = New cCBStructMember
        oMemSeq.Item(0).name = "name"
        Set oMemSeq.Item(0).p_type = oOrb.createStringTc(0)
        Set oMemSeq.Item(0).p_type = oOrb.createAliasTc("IDL:omg.org/CORBA/Identifier:1.0", "Identifier", oMemSeq.Item(0).p_type)
        Set oMemSeq.Item(1) = New cCBStructMember
        oMemSeq.Item(1).name = "id"
        Set oMemSeq.Item(1).p_type = oOrb.createStringTc(0)
        Set oMemSeq.Item(1).p_type = oOrb.createAliasTc("IDL:omg.org/CORBA/RepositoryId:1.0", "RepositoryId", oMemSeq.Item(1).p_type)
        Set oMemSeq.Item(2) = New cCBStructMember
        oMemSeq.Item(2).name = "defined_in"
        Set oMemSeq.Item(2).p_type = oOrb.createStringTc(0)
        Set oMemSeq.Item(2).p_type = oOrb.createAliasTc("IDL:omg.org/CORBA/RepositoryId:1.0", "RepositoryId", oMemSeq.Item(2).p_type)
        Set oMemSeq.Item(3) = New cCBStructMember
        oMemSeq.Item(3).name = "version"
        Set oMemSeq.Item(3).p_type = oOrb.createStringTc(0)
        Set oMemSeq.Item(3).p_type = oOrb.createAliasTc("IDL:omg.org/CORBA/VersionSpec:1.0", "VersionSpec", oMemSeq.Item(3).p_type)
        Set oMemSeq.Item(4) = New cCBStructMember
        oMemSeq.Item(4).name = "operations"
        Set oMemSeq.Item(4).p_type = mCBOperationDescription.TypeCode()
        Set oMemSeq.Item(4).p_type = oOrb.createSequenceTc(0, oMemSeq.Item(4).p_type)
        Set oMemSeq.Item(4).p_type = oOrb.createAliasTc("IDL:omg.org/CORBA/OpDescriptionSeq:1.0", "OpDescriptionSeq", oMemSeq.Item(4).p_type)
        Set oMemSeq.Item(5) = New cCBStructMember
        oMemSeq.Item(5).name = "attributes"
        Set oMemSeq.Item(5).p_type = mCBAttributeDescription.TypeCode()
        Set oMemSeq.Item(5).p_type = oOrb.createSequenceTc(0, oMemSeq.Item(5).p_type)
        Set oMemSeq.Item(5).p_type = oOrb.createAliasTc("IDL:omg.org/CORBA/AttrDescriptionSeq:1.0", "AttrDescriptionSeq", oMemSeq.Item(5).p_type)
        Set oMemSeq.Item(6) = New cCBStructMember
        oMemSeq.Item(6).name = "base_interfaces"
        Set oMemSeq.Item(6).p_type = oOrb.createStringTc(0)
        Set oMemSeq.Item(6).p_type = oOrb.createAliasTc("IDL:omg.org/CORBA/RepositoryId:1.0", "RepositoryId", oMemSeq.Item(6).p_type)
        Set oMemSeq.Item(6).p_type = oOrb.createSequenceTc(0, oMemSeq.Item(6).p_type)
        Set oMemSeq.Item(6).p_type = oOrb.createAliasTc("IDL:omg.org/CORBA/RepositoryIdSeq:1.0", "RepositoryIdSeq", oMemSeq.Item(6).p_type)
        Set oMemSeq.Item(7) = New cCBStructMember
        oMemSeq.Item(7).name = "type"
        Set oMemSeq.Item(7).p_type = oOrb.createPrimitiveTc(12) 'VBOrb.TCTypeCode
        'Overwrite place holder
        Call oRecTC.setRecTc2StructTc("FullInterfaceDescription", oMemSeq)
    End If
    Set TypeCode = oRecTC
    Exit Function
ErrRollback:
    Call oRecTC.destroy
ErrHandler:
    Call mVBOrb.VBOrb.ErrReraise(Err, "TypeCode")
End Function

'Helper, oAny.writeValue() -> struct.initByRead()
Public Function extractFromAny(ByVal oAny As cOrbAny) _
    As cCBInterfaceDefFullInterfaceDescription
    Dim oStruct As cCBInterfaceDefFullInterfaceDescription
    Set oStruct = New cCBInterfaceDefFullInterfaceDescription
    Call oStruct.initByAny(oAny)
    Set extractFromAny = oStruct
End Function

'Helper, struct.writeMe() -> oAny.initByReadValue()
Public Function cloneAsAny(ByVal oStruct As cCBInterfaceDefFullInterfaceDescription) _
    As cOrbAny
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
