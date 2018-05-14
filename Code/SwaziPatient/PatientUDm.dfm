object PatientDm: TPatientDm
  OldCreateOrder = False
  Left = 283
  Top = 44
  Height = 812
  Width = 1143
  object dsPatient: TDataSource
    DataSet = TblPatient
    Left = 152
    Top = 8
  end
  object dsLaboratoryResults: TDataSource
    DataSet = TblLaboratoryResults
    Left = 152
    Top = 72
  end
  object dsClinicalVisit: TDataSource
    DataSet = TblClinicalVisit
    Left = 152
    Top = 136
  end
  object TblPatient: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    BeforePost = TblPatientBeforePost
    AfterPost = TblPatientAfterPost
    AfterScroll = TblPatientAfterScroll
    OnNewRecord = TblPatientNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT     dbo.tblPerson.*,'
      'dbo.view_abstract_V01_Person_.AgeInYears_Int AS AgeYears, '
      
        '                      dbo.view_abstract_V01_Person_.AgeInMonthsM' +
        'odYears_Int AS AgeMonths, dbo.view_abstract_V01_Person_.BirthDat' +
        'e_Dat AS Expr3, '
      
        '                      dbo.view_abstract_V01_Person_.Display_Long' +
        ' AS Expr4, dbo.view_abstract_V01_Person_.Display_Short AS Expr5'
      'FROM         dbo.view_abstract_V01_Person_ INNER JOIN'
      
        '                      dbo.tblPerson ON dbo.view_abstract_V01_Per' +
        'son_.person_ID = dbo.tblPerson.person_ID'
      'WHERE     (dbo.tblPerson.personPatient_bol = 1)')
    Left = 40
    Top = 8
    object TblPatientperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object TblPatientpersonIDNumber_Str: TWideStringField
      FieldName = 'personIDNumber_Str'
    end
    object TblPatientpersonLastName_Str: TWideStringField
      FieldName = 'personLastName_Str'
      Size = 30
    end
    object TblPatientpersonFirstName_Str: TWideStringField
      FieldName = 'personFirstName_Str'
      Size = 30
    end
    object TblPatientpersonKnownName_Str: TWideStringField
      FieldName = 'personKnownName_Str'
      Size = 50
    end
    object TblPatientpersonInitials_Str: TWideStringField
      FieldName = 'personInitials_Str'
      Size = 10
    end
    object TblPatientpersonDOB_Dat: TDateTimeField
      FieldName = 'personDOB_Dat'
    end
    object TblPatientpersonGender_Str: TWideStringField
      FieldName = 'personGender_Str'
      Size = 1
    end
    object TblPatientpersonReviewed_Dat: TDateTimeField
      FieldName = 'personReviewed_Dat'
    end
    object TblPatientpersonActive_Bol: TBooleanField
      FieldName = 'personActive_Bol'
    end
    object TblPatientpersonRace_Str: TWideStringField
      FieldName = 'personRace_Str'
      Size = 30
    end
    object TblPatientpersonLanguageNarrative_Str: TWideStringField
      FieldName = 'personLanguageNarrative_Str'
      Size = 30
    end
    object TblPatientpersonLanguageWritten_Str: TWideStringField
      FieldName = 'personLanguageWritten_Str'
      Size = 30
    end
    object TblPatientpersonAgeYears_int: TIntegerField
      FieldName = 'personAgeYears_int'
    end
    object TblPatientpersonAgeMonths_int: TIntegerField
      FieldName = 'personAgeMonths_int'
    end
    object TblPatientpersonDescription_str: TWideStringField
      FieldName = 'personDescription_str'
      Size = 300
    end
    object TblPatientpersonRefNoCurrent_str: TWideStringField
      FieldName = 'personRefNoCurrent_str'
    end
    object TblPatientpersonTelNoCurrent_str: TWideStringField
      FieldName = 'personTelNoCurrent_str'
    end
    object TblPatientpersonCelNoCurrent_str: TWideStringField
      FieldName = 'personCelNoCurrent_str'
    end
    object TblPatientpersonAddressCurrent_str: TWideStringField
      FieldName = 'personAddressCurrent_str'
      Size = 255
    end
    object TblPatientpersonRegistrationNo_str: TWideStringField
      FieldName = 'personRegistrationNo_str'
    end
    object TblPatientpersonInstitution_str: TWideStringField
      FieldName = 'personInstitution_str'
      Size = 200
    end
    object TblPatientpersonPatient_bol: TBooleanField
      FieldName = 'personPatient_bol'
    end
    object TblPatientpersonPrescriber_bol: TBooleanField
      FieldName = 'personPrescriber_bol'
    end
    object TblPatientpersonDispenser_bol: TBooleanField
      FieldName = 'personDispenser_bol'
    end
    object TblPatientpersonOther_bol: TBooleanField
      FieldName = 'personOther_bol'
    end
    object TblPatientsysLastEdited_dat: TDateTimeField
      FieldName = 'sysLastEdited_dat'
    end
    object TblPatientsysLastEditedBy_ID: TGuidField
      FieldName = 'sysLastEditedBy_ID'
      FixedChar = True
      Size = 38
    end
    object TblPatientsysLastEditedBy_str: TWideStringField
      FieldName = 'sysLastEditedBy_str'
      Size = 30
    end
    object TblPatientsysDeleted_bol: TBooleanField
      FieldName = 'sysDeleted_bol'
    end
    object TblPatientpersonDateDeceased_dat: TDateTimeField
      FieldName = 'personDateDeceased_dat'
    end
    object TblPatientpersonStatus_Str: TWideStringField
      FieldName = 'personStatus_Str'
      Size = 50
    end
    object TblPatientpersonStatusChangeDate_dat: TDateTimeField
      FieldName = 'personStatusChangeDate_dat'
    end
    object TblPatientpersonPead_bol: TBooleanField
      FieldName = 'personPead_bol'
    end
    object TblPatientpersonDateJoined_dat: TDateTimeField
      FieldName = 'personDateJoined_dat'
      OnChange = TblPatientpersonDateJoined_datChange
    end
    object TblPatientpersonStatusDesc_str: TWideStringField
      FieldName = 'personStatusDesc_str'
      Size = 150
    end
    object TblPatientpersonPAS_str: TWideStringField
      FieldName = 'personPAS_str'
    end
    object TblPatientpersonInstitution_ID: TGuidField
      FieldName = 'personInstitution_ID'
      FixedChar = True
      Size = 38
    end
    object TblPatientpersonNaive_Bol: TBooleanField
      FieldName = 'personNaive_Bol'
    end
    object TblPatientpersonNaiveDate_Dat: TDateTimeField
      FieldName = 'personNaiveDate_Dat'
    end
    object TblPatientpersonClintech_ID: TIntegerField
      FieldName = 'personClintech_ID'
    end
    object TblPatientpersonMaritalStatus_str: TWideStringField
      FieldName = 'personMaritalStatus_str'
      Size = 10
    end
    object TblPatientpersonDeceased_bol: TBooleanField
      FieldName = 'personDeceased_bol'
    end
    object TblPatientpersonDefaulted_bol: TBooleanField
      FieldName = 'personDefaulted_bol'
    end
    object TblPatientpersonDefaulted_dat: TDateTimeField
      FieldName = 'personDefaulted_dat'
    end
    object TblPatientpersonPAAB_ID: TWideStringField
      FieldName = 'personPAAB_ID'
      Size = 25
    end
    object TblPatientpersonRegisteredInSys_bol: TBooleanField
      FieldName = 'personRegisteredInSys_bol'
    end
    object TblPatientpersonRegisteredInSys_dat: TDateTimeField
      FieldName = 'personRegisteredInSys_dat'
    end
    object TblPatientpersonTransferredIn_bol: TBooleanField
      FieldName = 'personTransferredIn_bol'
    end
    object TblPatientpersonTransferredInDate_dat: TDateTimeField
      FieldName = 'personTransferredInDate_dat'
    end
    object TblPatientpersonTransferredInFrom_str: TWideStringField
      FieldName = 'personTransferredInFrom_str'
      Size = 50
    end
    object TblPatientpersonTransferredOut_bol: TBooleanField
      FieldName = 'personTransferredOut_bol'
    end
    object TblPatientpersonTransferredOutDate_dat: TDateTimeField
      FieldName = 'personTransferredOutDate_dat'
    end
    object TblPatientpersonTransferredOutTo_str: TWideStringField
      FieldName = 'personTransferredOutTo_str'
      Size = 50
    end
    object TblPatientvstPregnancyDeliveryDate_dat: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object TblPatientvstFunctionalStatus_str: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object TblPatientvstClinicalStage_str: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object TblPatientvstRegimenChange_From_str: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object TblPatientvstRegimenChange_To_str: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object TblPatientvstRegimenChange_Reason_str: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object TblPatientvstVisitDate_dat: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object TblPatientvstNextVisit_dat: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object TblPatientvstScheduledVisit_dat: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object TblPatientpersonpregnant_bol: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object TblPatientvstHeight_dbl: TFloatField
      FieldName = 'vstHeight_dbl'
    end
    object TblPatientvstLostToFollowUpDate_dat: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object TblPatientvstRegimenStart_str: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object TblPatientvstRegimenStartDate_dat: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object TblPatientvstTreatmentEligibility_str: TWideStringField
      FieldName = 'vstTreatmentEligibility_str'
      Size = 50
    end
    object TblPatientvstTreatmentStopped_date_dat: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object TblPatientvstWeight_dbl: TFloatField
      FieldName = 'vstWeight_dbl'
    end
    object TblPatientvstCohort_str: TWideStringField
      FieldName = 'vstCohort_str'
      FixedChar = True
      Size = 10
    end
    object TblPatientvstTempPatient_bol: TBooleanField
      FieldName = 'vstTempPatient_bol'
    end
    object TblPatientReasonForEligibility_Str: TWideStringField
      FieldName = 'ReasonForEligibility_Str'
      Size = 50
    end
    object TblPatientvstSupporterName_str: TWideStringField
      FieldName = 'vstSupporterName_str'
      Size = 30
    end
    object TblPatientvstSupporterAddress_str: TWideStringField
      FieldName = 'vstSupporterAddress_str'
      Size = 50
    end
    object TblPatientvstUpporterPhone_str: TWideStringField
      FieldName = 'vstUpporterPhone_str'
      Size = 50
    end
    object TblPatientvstSupporterRelationship_str: TWideStringField
      FieldName = 'vstSupporterRelationship_str'
    end
    object TblPatientClassification_ID: TIntegerField
      FieldName = 'Classification_ID'
      OnChange = TblPatientClassification_IDChange
    end
    object TblPatientvstIsOnSite_bol: TBooleanField
      FieldName = 'vstIsOnSite_bol'
    end
    object TblPatientvstOnSiteDate_dat: TDateTimeField
      FieldName = 'vstOnSiteDate_dat'
    end
    object TblPatientDiagnosis_dat: TDateTimeField
      FieldName = 'Diagnosis_dat'
    end
    object TblPatientARTStart_dat: TDateTimeField
      FieldName = 'ARTStart_dat'
    end
    object TblPatientEntryPoint_str: TWideStringField
      FieldName = 'EntryPoint_str'
    end
    object TblPatientAgeYears: TIntegerField
      FieldName = 'AgeYears'
    end
    object TblPatientAgeMonths: TIntegerField
      FieldName = 'AgeMonths'
    end
    object TblPatientExpr3: TDateTimeField
      FieldName = 'Expr3'
    end
    object TblPatientExpr4: TWideStringField
      FieldName = 'Expr4'
      Size = 320
    end
    object TblPatientExpr5: TWideStringField
      FieldName = 'Expr5'
      Size = 300
    end
    object TblPatientClassification_str: TWideStringField
      FieldName = 'Classification_str'
    end
    object TblPatientpersonReligion_str: TWideStringField
      FieldName = 'personReligion_str'
    end
    object TblPatienteligibilityCD4Count_str: TWideStringField
      FieldName = 'eligibilityCD4Count_str'
      Size = 4
    end
    object TblPatienteligibilityWHOStaging_str: TWideStringField
      FieldName = 'eligibilityWHOStaging_str'
      Size = 10
    end
    object TblPatientNationality_str: TWideStringField
      FieldName = 'Nationality_str'
      Size = 50
    end
  end
  object dsPatientWeight: TDataSource
    DataSet = qryPatientWeight
    Left = 152
    Top = 200
  end
  object tblOIs: TADOTable
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    IndexFieldNames = 'InfectionName_str'
    TableName = 'tlkOIs'
    Left = 344
    Top = 16
    object tblOIsInfection_Id: TAutoIncField
      FieldName = 'Infection_Id'
      ReadOnly = True
    end
    object tblOIsInfectionName_str: TWideStringField
      FieldName = 'InfectionName_str'
      Size = 50
    end
  end
  object dstblOIs: TDataSource
    DataSet = tblOIs
    Left = 408
    Top = 16
  end
  object dstblReasons: TDataSource
    DataSet = tblReasons
    Left = 416
    Top = 80
  end
  object tblClinics: TADOTable
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    TableName = 'tblClinic'
    Left = 336
    Top = 144
    object tblClinicsclinic_ID: TGuidField
      FieldName = 'clinic_ID'
      FixedChar = True
      Size = 38
    end
    object tblClinicsclinicName_str: TWideStringField
      FieldName = 'clinicName_str'
      Size = 50
    end
    object tblClinicsclinicClassification_str: TWideStringField
      FieldName = 'clinicClassification_str'
      Size = 25
    end
    object tblClinicsclinicDistrictPharmacist_str: TWideStringField
      FieldName = 'clinicDistrictPharmacist_str'
      Size = 50
    end
    object tblClinicsclinicDistrictMunicipality_str: TWideStringField
      FieldName = 'clinicDistrictMunicipality_str'
      Size = 50
    end
    object tblClinicsclinicHealthSubDistrict_str: TWideStringField
      FieldName = 'clinicHealthSubDistrict_str'
      Size = 50
    end
    object tblClinicsclinicLocation_str: TWideStringField
      FieldName = 'clinicLocation_str'
      Size = 50
    end
    object tblClinicsdownRefRoute_ID: TGuidField
      FieldName = 'downRefRoute_ID'
      FixedChar = True
      Size = 38
    end
    object tblClinicsbatchRouteName_str: TWideStringField
      FieldName = 'batchRouteName_str'
      Size = 100
    end
    object tblClinicsclinicAddress01_str: TWideStringField
      FieldName = 'clinicAddress01_str'
      Size = 100
    end
    object tblClinicsclinicAddress02_str: TWideStringField
      FieldName = 'clinicAddress02_str'
      Size = 100
    end
    object tblClinicsclinicAddress03_str: TWideStringField
      FieldName = 'clinicAddress03_str'
      Size = 100
    end
    object tblClinicsclinicAddress04_str: TWideStringField
      FieldName = 'clinicAddress04_str'
      Size = 100
    end
    object tblClinicsclinicDays_str: TWideStringField
      FieldName = 'clinicDays_str'
      Size = 200
    end
    object tblClinicsclinicElectoralWard_str: TWideStringField
      FieldName = 'clinicElectoralWard_str'
      Size = 50
    end
    object tblClinicsclinicTelephone_str: TWideStringField
      FieldName = 'clinicTelephone_str'
      Size = 50
    end
  end
  object dsClinics: TDataSource
    DataSet = tblClinics
    Left = 400
    Top = 144
  end
  object tblLabTests: TADOTable
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    TableName = 'tlkLabTests'
    Left = 336
    Top = 200
    object tblLabTeststestCode_str: TWideStringField
      FieldName = 'testCode_str'
      Size = 50
    end
    object tblLabTeststestName_str: TWideStringField
      FieldName = 'testName_str'
      Size = 50
    end
    object tblLabTeststestDescription_str: TWideStringField
      FieldName = 'testDescription_str'
      Size = 100
    end
  end
  object dsLabTests: TDataSource
    DataSet = tblLabTests
    Left = 400
    Top = 200
  end
  object qryNumbering: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblSystemRecordNumbering')
    Left = 336
    Top = 264
  end
  object dsProtocols: TDataSource
    DataSet = tblProtocols
    Left = 408
    Top = 320
  end
  object dsPersonSupporter: TDataSource
    Left = 152
    Top = 256
  end
  object qryCD4: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    SQL.Strings = (
      
        'select * from tblPersonLaboratoryResult where (personID = :perso' +
        'n_ID) And (testCode_str='#39'CD4'#39')'
      'Order by testDate_dat Desc')
    Left = 40
    Top = 328
    object qryCD4lbResultID: TGuidField
      FieldName = 'lbResultID'
      FixedChar = True
      Size = 38
    end
    object qryCD4personID: TGuidField
      FieldName = 'personID'
      FixedChar = True
      Size = 38
    end
    object qryCD4testName_str: TWideStringField
      FieldName = 'testName_str'
      Size = 300
    end
    object qryCD4testCode_str: TWideStringField
      FieldName = 'testCode_str'
      Size = 30
    end
    object qryCD4testResult_str: TWideStringField
      FieldName = 'testResult_str'
      Size = 500
    end
    object qryCD4testResult_dbl: TFloatField
      FieldName = 'testResult_dbl'
    end
    object qryCD4testDate_dat: TDateTimeField
      FieldName = 'testDate_dat'
    end
    object qryCD4testPlace_str: TWideStringField
      FieldName = 'testPlace_str'
      Size = 100
    end
  end
  object dsqryCD4: TDataSource
    DataSet = qryCD4
    Left = 152
    Top = 328
  end
  object qryVL: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    SQL.Strings = (
      
        'select * from tblPersonLaboratoryResult where (personID = :perso' +
        'n_ID) And (testCode_str='#39'VL'#39')'
      'Order by testDate_dat Desc')
    Left = 40
    Top = 392
    object GuidField1: TGuidField
      FieldName = 'lbResultID'
      FixedChar = True
      Size = 38
    end
    object GuidField2: TGuidField
      FieldName = 'personID'
      FixedChar = True
      Size = 38
    end
    object WideStringField1: TWideStringField
      FieldName = 'testName_str'
      Size = 300
    end
    object WideStringField2: TWideStringField
      FieldName = 'testCode_str'
      Size = 30
    end
    object WideStringField3: TWideStringField
      FieldName = 'testResult_str'
      Size = 500
    end
    object FloatField1: TFloatField
      FieldName = 'testResult_dbl'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'testDate_dat'
    end
    object WideStringField4: TWideStringField
      FieldName = 'testPlace_str'
      Size = 100
    end
  end
  object dsqryVL: TDataSource
    DataSet = qryVL
    Left = 152
    Top = 392
  end
  object tblPosition: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tblPersonPosition')
    Left = 248
    Top = 16
    object tblPositionpersonPosition_ID: TGuidField
      FieldName = 'personPosition_ID'
      FixedChar = True
      Size = 38
    end
    object tblPositionperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object tblPositionpersonType_ID: TGuidField
      FieldName = 'personType_ID'
      FixedChar = True
      Size = 38
    end
    object tblPositionrxLevel_ID: TGuidField
      FieldName = 'rxLevel_ID'
      FixedChar = True
      Size = 38
    end
    object tblPositionpersonPositionTitle_ID: TGuidField
      FieldName = 'personPositionTitle_ID'
      FixedChar = True
      Size = 38
    end
    object tblPositionpersonPositionDescription_Str: TWideStringField
      FieldName = 'personPositionDescription_Str'
      Size = 200
    end
    object tblPositionpersonPositionStart_Dat: TDateTimeField
      FieldName = 'personPositionStart_Dat'
    end
    object tblPositionpersonPositionEnd_Dat: TDateTimeField
      FieldName = 'personPositionEnd_Dat'
    end
    object tblPositionpersonPositionBarCode_Str: TWideStringField
      FieldName = 'personPositionBarCode_Str'
      Size = 16
    end
    object tblPositionpersonPositionTitle_Str: TWideStringField
      FieldName = 'personPositionTitle_Str'
      Size = 15
    end
    object tblPositionpersonPositionNumberNo_Str: TWideStringField
      FieldName = 'personPositionNumberNo_Str'
      Size = 50
    end
    object tblPositionpersonPositionCurrent_bol: TBooleanField
      FieldName = 'personPositionCurrent_bol'
    end
    object tblPositioncomplexSiteDepartment_ID: TGuidField
      FieldName = 'complexSiteDepartment_ID'
      FixedChar = True
      Size = 38
    end
    object tblPositionspecialisation_ID: TGuidField
      FieldName = 'specialisation_ID'
      FixedChar = True
      Size = 38
    end
    object tblPositionclinic_ID: TGuidField
      FieldName = 'clinic_ID'
      FixedChar = True
      Size = 38
    end
    object tblPositionpersonPositionPost_ID: TGuidField
      FieldName = 'personPositionPost_ID'
      FixedChar = True
      Size = 38
    end
  end
  object dsPosition: TDataSource
    DataSet = tblPosition
    Left = 248
    Top = 80
  end
  object qryCD4Perc: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    SQL.Strings = (
      
        'select * from tblPersonLaboratoryResult where (personID = :perso' +
        'n_ID) And (testCode_str='#39'CD4%'#39')'
      'Order by testDate_dat Desc')
    Left = 40
    Top = 448
    object GuidField3: TGuidField
      FieldName = 'lbResultID'
      FixedChar = True
      Size = 38
    end
    object GuidField4: TGuidField
      FieldName = 'personID'
      FixedChar = True
      Size = 38
    end
    object WideStringField5: TWideStringField
      FieldName = 'testName_str'
      Size = 300
    end
    object WideStringField6: TWideStringField
      FieldName = 'testCode_str'
      Size = 30
    end
    object WideStringField7: TWideStringField
      FieldName = 'testResult_str'
      Size = 500
    end
    object FloatField2: TFloatField
      FieldName = 'testResult_dbl'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'testDate_dat'
    end
    object WideStringField8: TWideStringField
      FieldName = 'testPlace_str'
      Size = 100
    end
  end
  object dsqryCD4Perc: TDataSource
    DataSet = qryCD4Perc
    Left = 152
    Top = 448
  end
  object qryP24: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    SQL.Strings = (
      
        'select * from tblPersonLaboratoryResult where (personID = :perso' +
        'n_ID) And (testCode_str='#39'P24'#39')'
      'Order by testDate_dat Desc')
    Left = 40
    Top = 504
    object GuidField5: TGuidField
      FieldName = 'lbResultID'
      FixedChar = True
      Size = 38
    end
    object GuidField6: TGuidField
      FieldName = 'personID'
      FixedChar = True
      Size = 38
    end
    object WideStringField9: TWideStringField
      FieldName = 'testName_str'
      Size = 300
    end
    object WideStringField10: TWideStringField
      FieldName = 'testCode_str'
      Size = 30
    end
    object WideStringField11: TWideStringField
      FieldName = 'testResult_str'
      Size = 500
    end
    object FloatField3: TFloatField
      FieldName = 'testResult_dbl'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'testDate_dat'
    end
    object WideStringField12: TWideStringField
      FieldName = 'testPlace_str'
      Size = 100
    end
  end
  object dsqryP24: TDataSource
    DataSet = qryP24
    Left = 152
    Top = 504
  end
  object qryPCR: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    SQL.Strings = (
      
        'select * from tblPersonLaboratoryResult where (personID = :perso' +
        'n_ID) And (testCode_str='#39'PCR'#39')'
      'Order by testDate_dat Desc')
    Left = 336
    Top = 456
    object GuidField7: TGuidField
      FieldName = 'lbResultID'
      FixedChar = True
      Size = 38
    end
    object GuidField8: TGuidField
      FieldName = 'personID'
      FixedChar = True
      Size = 38
    end
    object WideStringField13: TWideStringField
      FieldName = 'testName_str'
      Size = 300
    end
    object WideStringField14: TWideStringField
      FieldName = 'testCode_str'
      Size = 30
    end
    object WideStringField15: TWideStringField
      FieldName = 'testResult_str'
      Size = 500
    end
    object FloatField4: TFloatField
      FieldName = 'testResult_dbl'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'testDate_dat'
    end
    object WideStringField16: TWideStringField
      FieldName = 'testPlace_str'
      Size = 100
    end
  end
  object dsqryPCR: TDataSource
    DataSet = qryPCR
    Left = 416
    Top = 456
  end
  object dsInteruptions: TDataSource
    DataSet = tblInterruptions
    Left = 408
    Top = 392
  end
  object tblInterruptions: TADOTable
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MasterSource = dsPatient
    TableName = 'tblInterruptions'
    Left = 336
    Top = 392
    object tblInterruptionsinteruptions_id: TGuidField
      FieldName = 'interuptions_id'
      FixedChar = True
      Size = 38
    end
    object tblInterruptionsperson_id: TGuidField
      FieldName = 'person_id'
      FixedChar = True
      Size = 38
    end
    object tblInterruptionstreatment_str: TWideStringField
      FieldName = 'treatment_str'
      Size = 50
    end
    object tblInterruptionsRegimentStopped: TWideStringField
      FieldName = 'RegimentStopped'
      FixedChar = True
      Size = 10
    end
    object tblInterruptionsDateStarted_dat: TDateTimeField
      FieldName = 'DateStarted_dat'
    end
    object tblInterruptionsDateStopped_dat: TDateTimeField
      FieldName = 'DateStopped_dat'
    end
    object tblInterruptionsReasonStopped_str: TWideStringField
      FieldName = 'ReasonStopped_str'
      Size = 50
    end
    object tblInterruptionsDateRestarted_dat: TDateTimeField
      FieldName = 'DateRestarted_dat'
    end
    object tblInterruptionspersonRefNum_str: TWideStringField
      FieldName = 'personRefNum_str'
      FixedChar = True
      Size = 10
    end
  end
  object tblContact: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tblContact'
      '')
    Left = 536
    Top = 24
    object tblContactcontact_ID: TGuidField
      FieldName = 'contact_ID'
      FixedChar = True
      Size = 38
    end
    object tblContactlinking_ID: TGuidField
      FieldName = 'linking_ID'
      FixedChar = True
      Size = 38
    end
    object tblContactcontactType_Str: TWideStringField
      FieldName = 'contactType_Str'
      Size = 25
    end
    object tblContactcontactDetailOrder_Int: TIntegerField
      FieldName = 'contactDetailOrder_Int'
    end
    object tblContactcontactDetail_Str: TWideStringField
      FieldName = 'contactDetail_Str'
      Size = 150
    end
    object tblContactcontactDescription_Str: TWideStringField
      FieldName = 'contactDescription_Str'
      Size = 255
    end
    object tblContactcontactDisplay_Str: TWideStringField
      FieldName = 'contactDisplay_Str'
      Size = 250
    end
    object tblContactcontactLine01_str: TWideStringField
      FieldName = 'contactLine01_str'
      Size = 75
    end
    object tblContactcontactLine02_str: TWideStringField
      FieldName = 'contactLine02_str'
      Size = 75
    end
    object tblContactcontactLine03_str: TWideStringField
      FieldName = 'contactLine03_str'
      Size = 75
    end
    object tblContactcontactLine04_str: TWideStringField
      FieldName = 'contactLine04_str'
      Size = 75
    end
    object tblContactcontactMode_str: TWideStringField
      FieldName = 'contactMode_str'
      Size = 25
    end
  end
  object dsContact: TDataSource
    DataSet = tblContact
    Left = 536
    Top = 88
  end
  object patientDuplicateIPN: TADOQuery
    Tag = 1
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Ref'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'Select person_ID, personIDNumber_str+'#39': '#39'+personLastName_Str+'#39', ' +
        #39'+personFirstName_str AS PatientName '
      'from tblperson'
      'Where tblperson.personRefNoCurrent_str = :Ref')
    Left = 536
    Top = 152
  end
  object tblProtocols: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Groupcode_Str, Name_Str '
      'FROM TblStdProtocol'
      'WHERE Groupcode_Str NOT LIKE '#39'%TB%'#39
      'GROUP BY GroupCode_Str, Name_Str'
      'ORDER BY Groupcode_Str, Name_Str')
    Left = 336
    Top = 320
    object tblProtocolsName_Str: TWideStringField
      FieldName = 'Name_Str'
      Size = 250
    end
    object tblProtocolsGroupCode_Str: TWideStringField
      FieldName = 'GroupCode_Str'
    end
  end
  object tblRxAudit: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tblPrescriptionAudit')
    Left = 336
    Top = 520
  end
  object TblClinicalVisit: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    BeforeEdit = TblClinicalVisitBeforeEdit
    BeforePost = TblClinicalVisitBeforePost
    AfterPost = TblClinicalVisitAfterPost
    OnNewRecord = TblClinicalVisitNewRecord
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    SQL.Strings = (
      'SELECT TblVisit.* FROM TblVisit'
      'WHERE TblVisit.patient_ID=:person_id')
    Left = 40
    Top = 136
    object TblClinicalVisitpatient_ID: TGuidField
      FieldName = 'patient_ID'
      FixedChar = True
      Size = 38
    end
    object TblClinicalVisitpersonpregnant_bol: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object TblClinicalVisitvstTreamentPrescribed_bol: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object TblClinicalVisitvstPregnancyDeliveryDate_dat: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object TblClinicalVisitvstFunctionalStatus_str: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object TblClinicalVisitvstClinicalStage_str: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object TblClinicalVisitvstPropo_CoTri_Start_dat: TDateTimeField
      FieldName = 'vstPropo_CoTri_Start_dat'
    end
    object TblClinicalVisitvstPropo_CoTri_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_CoTri_Stopped_dat'
    end
    object TblClinicalVisitvstPropo_Fluconazole_Start_dat: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Start_dat'
    end
    object TblClinicalVisitvstPropo_Fluconazole_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Stopped_dat'
    end
    object TblClinicalVisitvstPropo_INH_Start_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Start_dat'
    end
    object TblClinicalVisitvstPropo_INH_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Stopped_dat'
    end
    object TblClinicalVisitvstPropo_TBTreatment_Start_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Start_dat'
    end
    object TblClinicalVisitvstPropo_TBTreatment_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Stopped_dat'
    end
    object TblClinicalVisitvstRegimenChange_From_str: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object TblClinicalVisitvstRegimenChange_To_str: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object TblClinicalVisitvstRegimenChange_Reason_str: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object TblClinicalVisitvstVisitDate_dat: TDateTimeField
      FieldName = 'vstVisitDate_dat'
      OnChange = TblClinicalVisitvstVisitDate_datChange
    end
    object TblClinicalVisitvstNextVisit_dat: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object TblClinicalVisitvstScheduledVisit_dat: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object TblClinicalVisitvstRegimenStart_str: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object TblClinicalVisitvstLostToFollowUpDate_dat: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object TblClinicalVisitvstTreatmentStopped_date_dat: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object TblClinicalVisitvstRegimenStartDate_dat: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object TblClinicalVisituser_id: TGuidField
      FieldName = 'user_id'
      FixedChar = True
      Size = 38
    end
    object TblClinicalVisitcompleted_bol: TBooleanField
      FieldName = 'completed_bol'
    end
    object TblClinicalVisitVisit_ID: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object TblClinicalVisitvstPregnancyExpectedDelivery_dat: TDateTimeField
      FieldName = 'vstPregnancyExpectedDelivery_dat'
    end
    object TblClinicalVisitvstPregnancyTrimister_str: TStringField
      FieldName = 'vstPregnancyTrimister_str'
      FixedChar = True
      Size = 10
    end
    object TblClinicalVisitnotes_mem: TMemoField
      FieldName = 'notes_mem'
      BlobType = ftMemo
    end
    object TblClinicalVisitvisitType_str: TWideStringField
      DisplayWidth = 40
      FieldName = 'visitType_str'
      Size = 40
    end
    object TblClinicalVisitvstWeanAgeYears_int: TIntegerField
      FieldName = 'vstWeanAgeYears_int'
    end
    object TblClinicalVisitvstFeedingType_str: TStringField
      FieldName = 'vstFeedingType_str'
      FixedChar = True
      Size = 1
    end
    object TblClinicalVisitvstPartumProphylaxis_str: TWideStringField
      FieldName = 'vstPartumProphylaxis_str'
      Size = 15
    end
    object TblClinicalVisitvstPregnancyLNMP_dat: TDateTimeField
      FieldName = 'vstPregnancyLNMP_dat'
    end
    object TblClinicalVisitvstTreatmentStoppedBy_str: TWideStringField
      FieldName = 'vstTreatmentStoppedBy_str'
    end
    object TblClinicalVisitTBVisit_dat: TDateTimeField
      FieldName = 'TBVisit_dat'
    end
    object TblClinicalVisitTBSite_str: TWideStringField
      FieldName = 'TBSite_str'
      Size = 30
    end
    object TblClinicalVisitTBExpectedCompletion_dat: TDateTimeField
      FieldName = 'TBExpectedCompletion_dat'
    end
    object TblClinicalVisitTBCategory_str: TWideStringField
      DisplayWidth = 40
      FieldName = 'TBCategory_str'
      Size = 30
    end
    object TblClinicalVisitIPT_bol: TBooleanField
      FieldName = 'IPT_bol'
    end
    object TblClinicalVisitIPTStart_dat: TDateTimeField
      FieldName = 'IPTStart_dat'
    end
    object TblClinicalVisitIPTStop_dat: TDateTimeField
      FieldName = 'IPTStop_dat'
    end
    object TblClinicalVisitTBStatus_str: TWideStringField
      FieldName = 'TBStatus_str'
      OnChange = TblClinicalVisitTBStatus_strChange
      Size = 30
    end
    object TblClinicalVisitTBOutcome_str: TWideStringField
      FieldName = 'TBOutcome_str'
      Size = 30
    end
    object TblClinicalVisitTBOutcome_dat: TDateTimeField
      FieldName = 'TBOutcome_dat'
    end
    object TblClinicalVisitTBRegimen_str: TWideStringField
      FieldName = 'TBRegimen_str'
      Size = 30
    end
    object TblClinicalVisitTBScreened_bol: TBooleanField
      FieldName = 'TBScreened_bol'
    end
    object TblClinicalVisitTBScreenResult_str: TWideStringField
      FieldName = 'TBScreenResult_str'
      Size = 30
    end
    object TblClinicalVisitTBScheduled_dat: TDateTimeField
      FieldName = 'TBScheduled_dat'
    end
    object TblClinicalVisitTBNextVisit_dat: TDateTimeField
      FieldName = 'TBNextVisit_dat'
    end
    object TblClinicalVisitvstScheduledTypeVisit_str: TWideStringField
      DisplayWidth = 40
      FieldName = 'vstScheduledTypeVisit_str'
      OnChange = TblClinicalVisitvstScheduledTypeVisit_strChange
      Size = 40
    end
    object TblClinicalVisitTBRegimenChangeTo_str: TWideStringField
      FieldName = 'TBRegimenChangeTo_str'
      Size = 30
    end
    object TblClinicalVisitTBRegimenChangeReason_str: TWideStringField
      FieldName = 'TBRegimenChangeReason_str'
      Size = 30
    end
    object TblClinicalVisitTBReasonStoppingTBTreatment_str: TWideStringField
      FieldName = 'TBReasonStoppingTBTreatment_str'
      Size = 30
    end
    object TblClinicalVisitTBReTreatmentType_str: TWideStringField
      DisplayWidth = 40
      FieldName = 'TBReTreatmentType_str'
    end
    object TblClinicalVisitTBDiagnosis_dat: TDateTimeField
      FieldName = 'TBDiagnosis_dat'
    end
    object TblClinicalVisitTBVisitType_str: TWideStringField
      DisplayWidth = 40
      FieldName = 'TBVisitType_str'
      Size = 40
    end
    object TblClinicalVisitTBScheduledVisitType_str: TWideStringField
      DisplayWidth = 40
      FieldName = 'TBScheduledVisitType_str'
      OnChange = TblClinicalVisitTBScheduledVisitType_strChange
      Size = 40
    end
    object TblClinicalVisitTBNextVisitType_str: TWideStringField
      DisplayWidth = 40
      FieldName = 'TBNextVisitType_str'
      Size = 40
    end
    object TblClinicalVisitvstTicketNumber_int: TIntegerField
      FieldName = 'vstTicketNumber_int'
    end
    object TblClinicalVisitTBSputumSmear_str: TWideStringField
      FieldName = 'TBSputumSmear_str'
      Size = 10
    end
    object TblClinicalVisitTBExtraPulmonarySite_str: TWideStringField
      FieldName = 'TBExtraPulmonarySite_str'
    end
    object TblClinicalVisitTBDiagnosedMethod_str: TWideStringField
      FieldName = 'TBDiagnosedMethod_str'
    end
    object TblClinicalVisitTBDiagnosedMethodNotes_str: TWideStringField
      FieldName = 'TBDiagnosedMethodNotes_str'
      Size = 150
    end
    object TblClinicalVisitTBDuration_int: TIntegerField
      FieldName = 'TBDuration_int'
    end
    object TblClinicalVisitvstOnBehalf_bol: TBooleanField
      FieldName = 'vstOnBehalf_bol'
    end
    object TblClinicalVisitvstOnBehalfID_str: TWideStringField
      FieldName = 'vstOnBehalfID_str'
    end
    object TblClinicalVisitTBContinuationPhase_dat: TDateTimeField
      FieldName = 'TBContinuationPhase_dat'
    end
    object TblClinicalVisitpersonTransferredInDate_dat: TDateTimeField
      FieldName = 'personTransferredInDate_dat'
    end
    object TblClinicalVisitpersonTransferredInFrom_str: TWideStringField
      FieldName = 'personTransferredInFrom_str'
      Size = 50
    end
    object TblClinicalVisitpersonTransferredOutDate_dat: TDateTimeField
      FieldName = 'personTransferredOutDate_dat'
    end
    object TblClinicalVisitpersonTransferredOutTo_str: TWideStringField
      FieldName = 'personTransferredOutTo_str'
      Size = 50
    end
    object TblClinicalVisitvstNextVisitType_str: TWideStringField
      DisplayWidth = 40
      FieldName = 'vstNextVisitType_str'
      Size = 40
    end
    object TblClinicalVisitvstNutritionalStatus_str: TWideStringField
      FieldName = 'vstNutritionalStatus_str'
      FixedChar = True
    end
    object TblClinicalVisitfamilyPlanning_str: TWideStringField
      FieldName = 'familyPlanning_str'
      Size = 30
    end
  end
  object qryPatientWeight: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    BeforePost = qryPatientWeightBeforePost
    AfterPost = qryPatientWeightAfterPost
    AfterScroll = qryPatientWeightAfterScroll
    OnNewRecord = qryPatientWeightNewRecord
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM tblPersonWeight'
      'WHERE tblPersonWeight.person_id=:person_id')
    Left = 40
    Top = 200
    object qryPatientWeightpersonWeight_ID: TGuidField
      FieldName = 'personWeight_ID'
      FixedChar = True
      Size = 38
    end
    object qryPatientWeightperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object qryPatientWeightpersonWeightDateRecorded_Dat: TDateTimeField
      FieldName = 'personWeightDateRecorded_Dat'
    end
    object qryPatientWeightpersonWeight_int: TFloatField
      FieldName = 'personWeight_int'
      OnChange = qryPatientWeightpersonWeight_intChange
    end
    object qryPatientWeightpersonHeight_Int: TFloatField
      FieldName = 'personHeight_Int'
      OnChange = qryPatientWeightpersonHeight_IntChange
    end
    object qryPatientWeightpersonIdealWeight_int: TIntegerField
      FieldName = 'personIdealWeight_int'
    end
    object qryPatientWeightpersonPregnant_bol: TBooleanField
      FieldName = 'personPregnant_bol'
    end
    object qryPatientWeightpersonRenalFunction_str: TWideStringField
      FieldName = 'personRenalFunction_str'
      Size = 50
    end
    object qryPatientWeightpersonCrCC: TWideStringField
      FieldName = 'personCrCC'
      Size = 50
    end
    object qryPatientWeightpersonIBW_dbl: TFloatField
      FieldName = 'personIBW_dbl'
    end
    object qryPatientWeightpersonBMI_dbl: TFloatField
      FieldName = 'personBMI_dbl'
    end
    object qryPatientWeightpersonABW_dbl: TFloatField
      FieldName = 'personABW_dbl'
    end
    object qryPatientWeightpersonBSA_dbl: TFloatField
      FieldName = 'personBSA_dbl'
    end
    object qryPatientWeightpersonLBW_dbl: TFloatField
      FieldName = 'personLBW_dbl'
    end
    object qryPatientWeightpersonTBW_dbl: TFloatField
      FieldName = 'personTBW_dbl'
    end
    object qryPatientWeightpersonSrCr_dbl: TFloatField
      FieldName = 'personSrCr_dbl'
    end
    object qryPatientWeightpersonCrCl_dbl: TFloatField
      FieldName = 'personCrCl_dbl'
    end
    object qryPatientWeightpersonPulse_int: TIntegerField
      FieldName = 'personPulse_int'
    end
    object qryPatientWeightpersonTemperature_dbl: TFloatField
      FieldName = 'personTemperature_dbl'
    end
    object qryPatientWeightpersonBP_str: TStringField
      FieldName = 'personBP_str'
      FixedChar = True
      Size = 7
    end
    object qryPatientWeightpersonMUAC_dbl: TFloatField
      FieldName = 'personMUAC_dbl'
    end
    object qryPatientWeightnotes_str: TWideStringField
      FieldName = 'notes_str'
      Size = 200
    end
    object qryPatientWeightpersonRespiratoryRate_str: TStringField
      FieldName = 'personRespiratoryRate_str'
      FixedChar = True
      Size = 7
    end
    object qryPatientWeightpersonWeightforHeight_str: TWideStringField
      FieldName = 'personWeightforHeight_str'
      Size = 10
    end
  end
  object tblPatientClass: TADOQuery
    Connection = MainDm.PatientMainConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM '
      'tlkPatientclassification'
      'ORDER BY Description_str')
    Left = 536
    Top = 216
    object tblPatientClassClassification_ID: TAutoIncField
      FieldName = 'Classification_ID'
      ReadOnly = True
    end
    object tblPatientClassCode_Str: TWideStringField
      FieldName = 'Code_Str'
      Size = 10
    end
    object tblPatientClassDescription_str: TWideStringField
      FieldName = 'Description_str'
      Size = 100
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsPatientLabel
    UserName = 'DBPipeline1'
    Left = 624
    Top = 520
  end
  object ppPatientCard: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = True
    PrinterSetup.mmMarginBottom = 21590
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 26670
    PrinterSetup.mmPaperHeight = 147902
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 11
    PrinterSetup.DevMode = {00000000}
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    SavePrinterSetup = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 712
    Top = 520
    Version = '11.03'
    mmColumnWidth = 197379
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 86254
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ticket Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        mmHeight = 7408
        mmLeft = 27517
        mmTop = 8467
        mmWidth = 33867
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ART No: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        mmHeight = 7303
        mmLeft = 10848
        mmTop = 65617
        mmWidth = 21400
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7303
        mmLeft = 33867
        mmTop = 65352
        mmWidth = 56769
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Weight:___________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7281
        mmLeft = 10848
        mmTop = 75671
        mmWidth = 74168
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = clBlack
        mmHeight = 86254
        mmLeft = 103717
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 112448
        mmTop = 41275
        mmWidth = 10319
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        SaveOrder = 12
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Visit by:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 112448
        mmTop = 47361
        mmWidth = 12171
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        SaveOrder = 13
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date of visit:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 112448
        mmTop = 53181
        mmWidth = 19050
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        SaveOrder = 14
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Handover time:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 112448
        mmTop = 59267
        mmWidth = 23548
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        SaveOrder = 15
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'File slip'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6350
        mmLeft = 111919
        mmTop = 20638
        mmWidth = 21167
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ART No:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 112448
        mmTop = 28046
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4784
        mmLeft = 137319
        mmTop = 28046
        mmWidth = 40661
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ticket No:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 112448
        mmTop = 34396
        mmWidth = 16669
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Patient [or Proxy]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 137319
        mmTop = 47361
        mmWidth = 31485
        BandType = 4
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 16
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 137319
        mmTop = 59267
        mmWidth = 19579
        BandType = 4
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        SaveOrder = 17
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 137319
        mmTop = 53181
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'vstTicketNumber_int'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 72
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 29104
        mmLeft = 0
        mmTop = 23283
        mmWidth = 101865
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'vstTicketNumber_int'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4784
        mmLeft = 137319
        mmTop = 34396
        mmWidth = 26966
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDescription_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13107
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4826
        mmLeft = 137319
        mmTop = 41540
        mmWidth = 52388
        BandType = 4
      end
      object ppDBBarCode2: TppDBBarCode
        UserName = 'DBBarCode2'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 16933
        mmLeft = 105834
        mmTop = 67998
        mmWidth = 47625
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ActionList1: TActionList
    Left = 640
    Top = 24
    object atnPrintPatientCard: TAction
      Caption = 'Print Ticket'
      OnExecute = atnPrintPatientCardExecute
    end
    object atnPrintPatientSummary: TAction
      Caption = 'Summary'
      OnExecute = atnPrintPatientSummaryExecute
    end
    object atnPrintPatientBarcode: TAction
      Caption = 'Print Patient Barcode'
      OnExecute = atnPrintPatientBarcodeExecute
    end
    object atnEditPatientSummaryReport: TAction
      Caption = 'atnEditPatientSummaryReport'
      OnExecute = atnEditPatientSummaryReportExecute
    end
  end
  object qryPatientLabel: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.tblPerson.person_ID, dbo.tblPerson.personIDNumber' +
        '_Str, dbo.tblPerson.personLastName_Str, dbo.tblPerson.personFirs' +
        'tName_Str, '
      
        '                      dbo.tblPerson.personKnownName_Str, dbo.tbl' +
        'Person.personInitials_Str, dbo.tblPerson.personDOB_Dat, dbo.tblP' +
        'erson.personGender_Str, personDescription_str, personRefNoCurren' +
        't_str, tblVisit.vstTicketNumber_int'
      
        'FROM         dbo.tblPerson INNER JOIN tblVisit ON tblVisit.patie' +
        'nt_ID = tblperson.person_ID'
      'WHERE    tblVisit.Visit_ID IN '
      
        '(SELECT TOP 1 visit_ID FROM tblVisit WHERE tblVisit.patient_id =' +
        ':person_id ORDER BY vstVisitDate_dat DESC)')
    Left = 448
    Top = 520
  end
  object dsPatientLabel: TDataSource
    DataSet = qryPatientLabel
    Left = 544
    Top = 520
  end
  object tblReasons: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM'
      'tlkReason'
      'ORDER BY Reason_Str')
    Left = 344
    Top = 80
    object tblReasonsReason_Id: TAutoIncField
      FieldName = 'Reason_Id'
      ReadOnly = True
    end
    object tblReasonsReason_Str: TWideStringField
      FieldName = 'Reason_Str'
      Size = 50
    end
  end
  object dsPAtientClass: TDataSource
    DataSet = tblPatientClass
    Left = 640
    Top = 216
  end
  object qryPatientHandOvers: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    BeforePost = qryPatientHandOversBeforePost
    OnNewRecord = qryPatientHandOversNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT  tblVisitHandOvers.*'
      'FROM tblVisitHandOvers'
      '')
    Left = 536
    Top = 448
    object qryPatientHandOvershandover_id: TAutoIncField
      FieldName = 'handover_id'
      ReadOnly = True
    end
    object qryPatientHandOvershandOverTime_date: TDateTimeField
      FieldName = 'handOverTime_date'
    end
    object qryPatientHandOverspatient_id: TGuidField
      FieldName = 'patient_id'
      FixedChar = True
      Size = 38
    end
    object qryPatientHandOversmachineName_str: TWideStringField
      FieldName = 'machineName_str'
    end
    object qryPatientHandOvershandOverToType_str: TWideStringField
      FieldName = 'handOverToType_str'
    end
    object qryPatientHandOvershandedOverToName_str: TWideStringField
      FieldName = 'handedOverToName_str'
    end
    object qryPatientHandOvershandedOverToUser_ID: TGuidField
      FieldName = 'handedOverToUser_ID'
      FixedChar = True
      Size = 38
    end
    object qryPatientHandOversuser_id: TGuidField
      FieldName = 'user_id'
      FixedChar = True
      Size = 38
    end
    object qryPatientHandOvershandOverByType_str: TWideStringField
      FieldName = 'handOverByType_str'
    end
    object qryPatientHandOvershandOverNotes_str: TMemoField
      FieldName = 'handOverNotes_str'
      BlobType = ftMemo
    end
  end
  object qryMostRecentStatus: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TOP 1 * FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'ORDER BY vstVisitDate_dat Desc')
    Left = 40
    Top = 568
    object qryMostRecentStatuspersonpregnant_bol: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object qryMostRecentStatusvstTreamentPrescribed_bol: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object qryMostRecentStatusvstPregnancyDeliveryDate_dat: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object qryMostRecentStatusvstFunctionalStatus_str: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object qryMostRecentStatusvstClinicalStage_str: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object qryMostRecentStatusvstPropo_CoTri_Start_dat: TDateTimeField
      FieldName = 'vstPropo_CoTri_Start_dat'
    end
    object qryMostRecentStatusvstPropo_CoTri_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_CoTri_Stopped_dat'
    end
    object qryMostRecentStatusvstPropo_Fluconazole_Start_dat: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Start_dat'
    end
    object qryMostRecentStatusvstPropo_Fluconazole_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Stopped_dat'
    end
    object qryMostRecentStatusvstPropo_INH_Start_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Start_dat'
    end
    object qryMostRecentStatusvstPropo_INH_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Stopped_dat'
    end
    object qryMostRecentStatusvstPropo_TBTreatment_Start_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Start_dat'
    end
    object qryMostRecentStatusvstPropo_TBTreatment_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Stopped_dat'
    end
    object qryMostRecentStatusvstRegimenChange_From_str: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object qryMostRecentStatusvstRegimenChange_To_str: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object qryMostRecentStatusvstRegimenChange_Reason_str: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object qryMostRecentStatusvstVisitDate_dat: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object qryMostRecentStatusvstNextVisit_dat: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object qryMostRecentStatusvstScheduledVisit_dat: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object qryMostRecentStatusvstRegimenStart_str: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object qryMostRecentStatusvstLostToFollowUpDate_dat: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object qryMostRecentStatusvstTreatmentStopped_date_dat: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object qryMostRecentStatusvstRegimenStartDate_dat: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object qryMostRecentStatusvstPregnancyExpectedDelivery_dat: TDateTimeField
      FieldName = 'vstPregnancyExpectedDelivery_dat'
    end
    object qryMostRecentStatusvstPregnancyTrimister_str: TStringField
      FieldName = 'vstPregnancyTrimister_str'
      FixedChar = True
      Size = 10
    end
    object qryMostRecentStatusvisitType_str: TWideStringField
      FieldName = 'visitType_str'
      Size = 50
    end
    object qryMostRecentStatusVisit_ID: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object qryMostRecentStatusnotes_mem: TMemoField
      FieldName = 'notes_mem'
      BlobType = ftMemo
    end
    object qryMostRecentStatusTBVisit_dat: TDateTimeField
      FieldName = 'TBVisit_dat'
    end
    object qryMostRecentStatusTBScheduled_dat: TDateTimeField
      FieldName = 'TBScheduled_dat'
    end
    object qryMostRecentStatusTBNextVisit_dat: TDateTimeField
      FieldName = 'TBNextVisit_dat'
    end
    object qryMostRecentStatusTBVisitType_str: TWideStringField
      FieldName = 'TBVisitType_str'
      Size = 10
    end
    object qryMostRecentStatusTBSite_str: TWideStringField
      FieldName = 'TBSite_str'
      Size = 15
    end
    object qryMostRecentStatusTBDiagnosis_dat: TDateTimeField
      FieldName = 'TBDiagnosis_dat'
    end
    object qryMostRecentStatusTBExpectedCompletion_dat: TDateTimeField
      FieldName = 'TBExpectedCompletion_dat'
    end
    object qryMostRecentStatusTBCategory_str: TWideStringField
      FieldName = 'TBCategory_str'
      Size = 10
    end
    object qryMostRecentStatusIPT_bol: TBooleanField
      FieldName = 'IPT_bol'
    end
    object qryMostRecentStatusIPTStart_dat: TDateTimeField
      FieldName = 'IPTStart_dat'
    end
    object qryMostRecentStatusIPTStop_dat: TDateTimeField
      FieldName = 'IPTStop_dat'
    end
    object qryMostRecentStatusTBStatus_str: TWideStringField
      FieldName = 'TBStatus_str'
      Size = 30
    end
    object qryMostRecentStatusTBOutcome_str: TWideStringField
      FieldName = 'TBOutcome_str'
      Size = 30
    end
    object qryMostRecentStatusTBOutcome_dat: TDateTimeField
      FieldName = 'TBOutcome_dat'
    end
    object qryMostRecentStatusTBReasonStoppingTBTreatment_str: TWideStringField
      FieldName = 'TBReasonStoppingTBTreatment_str'
      Size = 30
    end
    object qryMostRecentStatusTBRegimen_str: TWideStringField
      FieldName = 'TBRegimen_str'
      Size = 30
    end
    object qryMostRecentStatusTBRegimenChangeTo_str: TWideStringField
      FieldName = 'TBRegimenChangeTo_str'
      Size = 30
    end
    object qryMostRecentStatusTBRegimenChangeReason_str: TWideStringField
      FieldName = 'TBRegimenChangeReason_str'
      Size = 30
    end
    object qryMostRecentStatusTBScreened_bol: TBooleanField
      FieldName = 'TBScreened_bol'
    end
    object qryMostRecentStatusTBScreenResult_str: TWideStringField
      FieldName = 'TBScreenResult_str'
      Size = 30
    end
    object qryMostRecentStatusTBScheduledVisitType_str: TWideStringField
      FieldName = 'TBScheduledVisitType_str'
      Size = 10
    end
    object qryMostRecentStatusTBNextVisitType_str: TWideStringField
      FieldName = 'TBNextVisitType_str'
      Size = 10
    end
    object qryMostRecentStatusTBReTreatmentType_str: TWideStringField
      FieldName = 'TBReTreatmentType_str'
      Size = 10
    end
    object qryMostRecentStatusvstScheduledTypeVisit_str: TWideStringField
      FieldName = 'vstScheduledTypeVisit_str'
    end
    object qryMostRecentStatusvstPregnancyLNMP_dat: TDateTimeField
      FieldName = 'vstPregnancyLNMP_dat'
    end
    object qryMostRecentStatusvstFeedingType_str: TStringField
      FieldName = 'vstFeedingType_str'
      FixedChar = True
      Size = 1
    end
    object qryMostRecentStatusvstWeanAgeYears_int: TIntegerField
      FieldName = 'vstWeanAgeYears_int'
    end
    object qryMostRecentStatusvstTreatmentStoppedBy_str: TWideStringField
      FieldName = 'vstTreatmentStoppedBy_str'
    end
    object qryMostRecentStatusvstPartumProphylaxis_str: TWideStringField
      FieldName = 'vstPartumProphylaxis_str'
      Size = 15
    end
    object qryMostRecentStatusTBExtraPulmonarySite_str: TWideStringField
      FieldName = 'TBExtraPulmonarySite_str'
    end
    object qryMostRecentStatusTBSputumSmear_str: TWideStringField
      FieldName = 'TBSputumSmear_str'
      Size = 10
    end
    object qryMostRecentStatusTBDiagnosedMethod_str: TWideStringField
      FieldName = 'TBDiagnosedMethod_str'
    end
    object qryMostRecentStatusTBDiagnosedMethodNotes_str: TWideStringField
      FieldName = 'TBDiagnosedMethodNotes_str'
      Size = 150
    end
    object qryMostRecentStatusTBDuration_int: TIntegerField
      FieldName = 'TBDuration_int'
    end
    object qryMostRecentStatusTBContinuationPhase_dat: TDateTimeField
      FieldName = 'TBContinuationPhase_dat'
    end
    object qryMostRecentStatusvstNextVisitType_str: TWideStringField
      FieldName = 'vstNextVisitType_str'
      Size = 40
    end
    object qryMostRecentStatuspersonTransferredInDate_dat: TDateTimeField
      FieldName = 'personTransferredInDate_dat'
    end
    object qryMostRecentStatuspersonTransferredInFrom_str: TWideStringField
      FieldName = 'personTransferredInFrom_str'
      Size = 50
    end
    object qryMostRecentStatuspersonTransferredOutDate_dat: TDateTimeField
      FieldName = 'personTransferredOutDate_dat'
    end
    object qryMostRecentStatuspersonTransferredOutTo_str: TWideStringField
      FieldName = 'personTransferredOutTo_str'
      Size = 50
    end
  end
  object dsMostRecentStatus: TDataSource
    DataSet = qryMostRecentStatus
    Left = 152
    Top = 568
  end
  object qryFirstStatus: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    SQL.Strings = (
      'SELECT vstClinicalStage_str FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'ORDER BY vstVisitDate_dat Asc')
    Left = 336
    Top = 584
  end
  object dsFirstStatus: TDataSource
    DataSet = qryFirstStatus
    Left = 416
    Top = 584
  end
  object qryIsNewVisitForToday: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        DataType = ftGuid
        Size = 38
        Value = '{332EBD5D-2FD1-4C00-A885-94733EC0BCD4}'
      end
      item
        Name = 'visitDate'
        DataType = ftDateTime
        Size = -1
        Value = 0d
      end
      item
        Name = 'visit_ID'
        Size = -1
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'IF EXISTS ('
      'SELECT Visit_ID FROM tblVisit'
      'WHERE patient_ID=:person_id'
      'AND DATEDiff(d, vstVisitDate_dat, :visitDate) = 0'
      'AND (visit_ID <>:visit_ID )'
      ')'
      'SELECT 1 AS Result'
      'ELSE '
      'SELECT 0 AS Result')
    Left = 544
    Top = 584
  end
  object qryVisitOIs: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    BeforePost = qryVisitOIsBeforePost
    OnNewRecord = qryVisitOIsNewRecord
    DataSource = dsClinicalVisit
    Parameters = <
      item
        Name = 'visit_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM tblVisitOIs'
      'WHERE tblVisitOIs.Visit_ID =:visit_ID')
    Left = 40
    Top = 624
  end
  object dsVisitOIs: TDataSource
    DataSet = qryVisitOIs
    Left = 152
    Top = 624
  end
  object qryMostRecentOIs: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    OnNewRecord = qryVisitOIsNewRecord
    DataSource = dsMostRecentStatus
    Parameters = <
      item
        Name = 'visit_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM tblVisitOIs'
      'WHERE tblVisitOIs.Visit_ID =:visit_ID')
    Left = 328
    Top = 648
  end
  object dsMostRecentOIs: TDataSource
    DataSet = qryMostRecentOIs
    Left = 440
    Top = 648
  end
  object qryIsOIExistsToday: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsClinicalVisit
    Parameters = <
      item
        Name = 'visit_ID'
        Size = -1
        Value = Null
      end
      item
        Name = 'oiDescription'
        Size = -1
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'IF EXISTS ('
      'SELECT VisitOI_ID FROM tblVisitOIs'
      'WHERE  Visit_ID=:visit_ID '
      'AND OI_Description =:oiDescription'
      ')'
      'SELECT 1 AS Result'
      'ELSE '
      'SELECT 0 AS Result')
    Left = 552
    Top = 648
  end
  object qryOnSitePatients: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT person_ID, vstIsOnSite_bol, personLastName_str, personFir' +
        'stName_str, personRefNoCurrent_str, personPAS_str, vstOnSiteDate' +
        '_dat'
      'FROM tblPerson'
      'WHERE vstOnSiteDate_dat < GetDate()-1')
    Left = 536
    Top = 384
    object qryOnSitePatientsperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object qryOnSitePatientsvstIsOnSite_bol: TBooleanField
      FieldName = 'vstIsOnSite_bol'
    end
    object qryOnSitePatientspersonLastName_str: TWideStringField
      FieldName = 'personLastName_str'
      Size = 30
    end
    object qryOnSitePatientspersonFirstName_str: TWideStringField
      FieldName = 'personFirstName_str'
      Size = 30
    end
    object qryOnSitePatientspersonRefNoCurrent_str: TWideStringField
      FieldName = 'personRefNoCurrent_str'
      Size = 50
    end
    object qryOnSitePatientspersonPAS_str: TWideStringField
      FieldName = 'personPAS_str'
    end
    object qryOnSitePatientsvstOnSiteDate_dat: TDateTimeField
      FieldName = 'vstOnSiteDate_dat'
    end
  end
  object dsOnSiteList: TDataSource
    DataSet = qryOnSitePatients
    Left = 624
    Top = 384
  end
  object tblActiveStatusLog: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    SQL.Strings = (
      'SELECT * FROM tblPersonStatusHistory'
      'WHERE tblPersonStatusHistory.person_ID =:person_ID')
    Left = 640
    Top = 100
    object tblActiveStatusLogstatushistory_id: TAutoIncField
      FieldName = 'statushistory_id'
      ReadOnly = True
    end
    object tblActiveStatusLogperson_id: TGuidField
      FieldName = 'person_id'
      FixedChar = True
      Size = 38
    end
    object tblActiveStatusLogclinic_str: TWideStringField
      FieldName = 'clinic_str'
      Size = 50
    end
    object tblActiveStatusLogclass_str: TWideStringField
      FieldName = 'class_str'
      Size = 30
    end
    object tblActiveStatusLogactive_bol: TBooleanField
      FieldName = 'active_bol'
    end
    object tblActiveStatusLogtemporary_bol: TBooleanField
      FieldName = 'temporary_bol'
    end
    object tblActiveStatusLoguserid: TGuidField
      FieldName = 'userid'
      FixedChar = True
      Size = 38
    end
    object tblActiveStatusLogusername_str: TWideStringField
      FieldName = 'username_str'
    end
    object tblActiveStatusLogchangeDate_dat: TDateTimeField
      FieldName = 'changeDate_dat'
    end
  end
  object ppPatientSummary: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelinePatient
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = True
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    PrinterSetup.DevMode = {00000000}
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    SavePrinterSetup = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 544
    Top = 712
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelinePatient'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 85990
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 53446
        mmLeft = 0
        mmTop = 0
        mmWidth = 203465
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 265
        mmTop = 7938
        mmWidth = 202671
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 265
        mmTop = 15346
        mmWidth = 202671
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 265
        mmTop = 37571
        mmWidth = 202671
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Pen.Style = psDash
        Shape = stRoundRect
        mmHeight = 20902
        mmLeft = 794
        mmTop = 16140
        mmWidth = 109538
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 22490
        mmLeft = 110861
        mmTop = 15346
        mmWidth = 92340
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 110861
        mmTop = 26723
        mmWidth = 92075
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 110861
        mmTop = 21431
        mmWidth = 92075
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 794
        mmTop = 21431
        mmWidth = 107421
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 794
        mmTop = 26723
        mmWidth = 107421
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 794
        mmTop = 32279
        mmWidth = 107421
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Referral Clinic:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 794
        mmTop = 2381
        mmWidth = 23199
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '1. PATIENT DETAILS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 1323
        mmTop = 9260
        mmWidth = 35116
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 118798
        mmTop = 9260
        mmWidth = 8869
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'First Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 2910
        mmTop = 17198
        mmWidth = 17293
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Surname'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 2910
        mmTop = 22225
        mmWidth = 14351
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 2910
        mmTop = 27517
        mmWidth = 7662
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ID Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 2910
        mmTop = 32279
        mmWidth = 17103
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sex:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 71967
        mmTop = 27517
        mmWidth = 7049
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Folder #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 112184
        mmTop = 16669
        mmWidth = 12975
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Phone #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 112184
        mmTop = 22490
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Address '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 112184
        mmTop = 27517
        mmWidth = 13970
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personFirstName_Str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 4064
        mmLeft = 21431
        mmTop = 16933
        mmWidth = 33634
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personLastName_Str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 4064
        mmLeft = 21431
        mmTop = 22225
        mmWidth = 33443
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDOB_Dat'
        DataPipeline = ppDBPipelinePatient
        DisplayFormat = 'DD/MM/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 4064
        mmLeft = 21431
        mmTop = 27517
        mmWidth = 25972
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personGender_Str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 4064
        mmLeft = 81227
        mmTop = 27517
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personIDNumber_Str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 4064
        mmLeft = 21431
        mmTop = 33073
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Next of kin: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 794
        mmTop = 38629
        mmWidth = 18627
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name, address and contact no.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 529
        mmTop = 42863
        mmWidth = 39180
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'vstSupporterName_str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 3239
        mmLeft = 46038
        mmTop = 38894
        mmWidth = 28194
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'vstSupporterAddress_str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 9250
        mmLeft = 46038
        mmTop = 42863
        mmWidth = 99484
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 15875
        mmLeft = 146050
        mmTop = 37571
        mmWidth = 57415
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Allergies:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 147373
        mmTop = 38365
        mmWidth = 14542
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 4064
        mmLeft = 130969
        mmTop = 16669
        mmWidth = 38587
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personTelNoCurrent_str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 4064
        mmLeft = 130969
        mmTop = 22225
        mmWidth = 37994
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personAddressCurrent_str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 9525
        mmLeft = 130969
        mmTop = 27517
        mmWidth = 69850
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current Clinic:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 112184
        mmTop = 2381
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personInstitution_str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 4064
        mmLeft = 137848
        mmTop = 2381
        mmWidth = 31856
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 32544
        mmLeft = 0
        mmTop = 53181
        mmWidth = 203465
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 60325
        mmWidth = 202671
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2. LONG TERM RECORD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 1323
        mmTop = 54504
        mmWidth = 41444
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 67733
        mmWidth = 202671
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 21431
        mmTop = 60325
        mmWidth = 265
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 54504
        mmTop = 60325
        mmWidth = 265
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 92604
        mmTop = 60325
        mmWidth = 265
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 128588
        mmTop = 60325
        mmWidth = 265
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Year HIV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 6350
        mmTop = 60854
        mmWidth = 14330
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Diagnosed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 6879
        mmTop = 64294
        mmWidth = 13483
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ARV Start date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 68792
        mmTop = 60854
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'at this or transferring clinic'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 59002
        mmTop = 64294
        mmWidth = 32935
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 164042
        mmTop = 60325
        mmWidth = 265
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Transfer-in'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 146050
        mmTop = 60854
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date (ART only)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 143140
        mmTop = 64294
        mmWidth = 19579
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Diagnosis_dat'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 4064
        mmLeft = 24342
        mmTop = 61383
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ARTStart_dat'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 3969
        mmLeft = 103188
        mmTop = 61383
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personTransferredInDate_dat'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 3969
        mmLeft = 174625
        mmTop = 61383
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipelineVisits'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 265
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipelineVisits
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = True
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          PrinterSetup.DevMode = {00000000}
          Version = '11.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipelineVisits'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 12965
            mmPrintPosition = 0
            object ppShape7: TppShape
              UserName = 'Shape7'
              mmHeight = 12965
              mmLeft = 265
              mmTop = 0
              mmWidth = 203200
              BandType = 1
            end
            object ppLabel36: TppLabel
              UserName = 'Label36'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Type'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 2381
              mmTop = 8996
              mmWidth = 7938
              BandType = 1
            end
            object ppLabel37: TppLabel
              UserName = 'Label37'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Date'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 36777
              mmTop = 8996
              mmWidth = 7408
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Functional Stage'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4064
              mmLeft = 63500
              mmTop = 8996
              mmWidth = 26522
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'Label39'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Clincal stage'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4064
              mmLeft = 123561
              mmTop = 8996
              mmWidth = 20257
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'visitType_str'
              DataPipeline = ppDBPipelineVisits
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipelineVisits'
              mmHeight = 3969
              mmLeft = 2381
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'vstVisitDate_dat'
              DataPipeline = ppDBPipelineVisits
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipelineVisits'
              mmHeight = 3969
              mmLeft = 36777
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'vstFunctionalStatus_str'
              DataPipeline = ppDBPipelineVisits
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineVisits'
              mmHeight = 3969
              mmLeft = 63500
              mmTop = 794
              mmWidth = 9790
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'vstClinicalStage_str'
              DataPipeline = ppDBPipelineVisits
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineVisits'
              mmHeight = 3969
              mmLeft = 123561
              mmTop = 794
              mmWidth = 9790
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
          end
        end
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 17463
      mmPrintPosition = 0
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 17018
        mmLeft = 1323
        mmTop = 529
        mmWidth = 47498
        BandType = 8
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBPipelinePatient: TppDBPipeline
    DataSource = dsSummary
    UserName = 'DBPipelinePatient'
    Left = 280
    Top = 696
  end
  object qryPatientSummary: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_ID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    SQL.Strings = (
      'SELECT tblPerson.person_ID'
      '      ,tblPerson.personIDNumber_Str'
      '      ,tblPerson.personLastName_Str'
      '      ,tblPerson.personFirstName_Str'
      '      ,tblPerson.personKnownName_Str'
      '      ,tblPerson.personInitials_Str'
      '      ,tblPerson.personDOB_Dat'
      '      ,tblPerson.personGender_Str'
      '      ,tblPerson.personActive_Bol'
      '      ,tblPerson.personRace_Str'
      '      ,tblPerson.personDescription_str'
      '      ,tblPerson.personRefNoCurrent_str'
      '      ,tblPerson.personTelNoCurrent_str'
      '      ,tblPerson.personCelNoCurrent_str'
      '      ,tblPerson.personAddressCurrent_str'
      '      ,tblPerson.personRegistrationNo_str'
      '      ,tblPerson.personInstitution_str'
      '      ,tblPerson.personDateDeceased_dat'
      '      ,tblPerson.personStatus_Str'
      '      ,tblPerson.personStatusChangeDate_dat'
      '      ,tblPerson.personDateJoined_dat'
      '      ,tblPerson.personStatusDesc_str'
      '      ,tblPerson.personPAS_str'
      '      ,tblPerson.personInstitution_ID'
      '      ,tblPerson.personMaritalStatus_str'
      '      ,tblPerson.personDeceased_bol'
      '      ,tblPerson.personDefaulted_bol'
      '      ,tblPerson.personDefaulted_dat'
      '      ,tblPerson.personRegisteredInSys_bol'
      '      ,tblPerson.personRegisteredInSys_dat'
      '      ,tblPerson.personTransferredIn_bol'
      '      ,tblPerson.personTransferredInDate_dat'
      '      ,tblPerson.personTransferredInFrom_str'
      '      ,tblPerson.personTransferredOut_bol'
      '      ,tblPerson.personTransferredOutDate_dat'
      '      ,tblPerson.personTransferredOutTo_str'
      '      ,tblPerson.personpregnant_bol'
      '      ,tblPerson.vstSupporterName_str'
      '      ,tblPerson.vstSupporterAddress_str'
      '      ,tblPerson.vstUpporterPhone_str'
      '      ,tblPerson.vstSupporterRelationship_str'
      '      ,tblPerson.vstCohort_str'
      '      ,tblPerson.ReasonForEligibility_Str'
      '      ,tblPerson.Classification_ID'
      '      ,tblPerson.vstIsOnSite_bol'
      '      ,tblPerson.vstOnSiteDate_dat'
      '      ,tblPerson.Diagnosis_dat'
      '      ,tblPerson.ARTStart_dat'
      '      ,tblPerson.EntryPoint_str'
      'FROM tblPerson'
      'WHERE person_id =:person_ID')
    Left = 40
    Top = 696
  end
  object dsSummary: TDataSource
    DataSet = qryPatientSummary
    Left = 152
    Top = 696
  end
  object TblLaboratoryResults: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    BeforeEdit = TblLaboratoryResultsBeforeEdit
    BeforePost = TblLaboratoryResultsBeforePost
    AfterPost = TblLaboratoryResultsAfterPost
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    SQL.Strings = (
      'SELECT * FROM tblPersonLaboratoryResult'
      ''
      'WHERE personid=:person_ID')
    Left = 40
    Top = 72
    object TblLaboratoryResultslbResultID: TGuidField
      FieldName = 'lbResultID'
      FixedChar = True
      Size = 38
    end
    object TblLaboratoryResultspersonID: TGuidField
      FieldName = 'personID'
      FixedChar = True
      Size = 38
    end
    object TblLaboratoryResultstestName_str: TWideStringField
      FieldName = 'testName_str'
      Size = 300
    end
    object TblLaboratoryResultstestCode_str: TWideStringField
      FieldName = 'testCode_str'
      OnChange = TblLaboratoryResultstestCode_strChange
      Size = 30
    end
    object TblLaboratoryResultstestResult_str: TWideStringField
      FieldName = 'testResult_str'
      Size = 500
    end
    object TblLaboratoryResultstestResult_dbl: TFloatField
      FieldName = 'testResult_dbl'
    end
    object TblLaboratoryResultstestDate_dat: TDateTimeField
      FieldName = 'testDate_dat'
    end
    object TblLaboratoryResultstestPlace_str: TWideStringField
      FieldName = 'testPlace_str'
      Size = 100
    end
    object TblLaboratoryResultstestBarCode_str: TWideStringField
      FieldName = 'testBarCode_str'
    end
    object TblLaboratoryResultstestPostive_bol: TBooleanField
      FieldName = 'testPostive_bol'
    end
  end
  object ppPatientBarCode: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelinePatient
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = True
    PrinterSetup.mmMarginBottom = 1000
    PrinterSetup.mmMarginLeft = 1000
    PrinterSetup.mmMarginRight = 1000
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 50000
    PrinterSetup.mmPaperWidth = 70000
    PrinterSetup.PaperSize = 256
    PrinterSetup.DevMode = {00000000}
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.ZoomSetting = zsPercentage
    SavePrinterSetup = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 544
    Top = 784
    Version = '11.03'
    mmColumnWidth = 74200
    DataPipelineName = 'ppDBPipelinePatient'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object ppDBBarCode3: TppDBBarCode
        UserName = 'DBBarCode3'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 17272
        mmLeft = 794
        mmTop = 0
        mmWidth = 47498
        BandType = 0
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personGender_Str'
        DataPipeline = ppDBPipelinePatient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 2910
        mmLeft = 11906
        mmTop = 20902
        mmWidth = 3440
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDOB_Dat'
        DataPipeline = ppDBPipelinePatient
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelinePatient'
        mmHeight = 2910
        mmLeft = 22754
        mmTop = 20902
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOB:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 15610
        mmTop = 20902
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gender:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 20902
        mmWidth = 10054
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DemanderName_str'
        DataPipeline = ppDBPipelineSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSystem'
        mmHeight = 3969
        mmLeft = 794
        mmTop = 24342
        mmWidth = 65352
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 794
        mmTop = 28310
        mmWidth = 30861
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        BlankWhenZero = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 794
        mmTop = 16933
        mmWidth = 14944
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Visible = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        5661726961626C65314F6E43616C630B50726F6772616D54797065070B747450
        726F63656475726506536F7572636506A770726F636564757265205661726961
        626C65314F6E43616C63287661722056616C75653A2056617269616E74293B0D
        0A626567696E0D0A0D0A202056616C7565203A3D204442506970656C696E6550
        617469656E745B27706572736F6E4465736372697074696F6E5F737472275D20
        2B2027205B272B4442506970656C696E6550617469656E745B27706572736F6E
        5041535F737472275D202B275D270D0A0D0A656E643B0D0A0D436F6D706F6E65
        6E744E616D6506095661726961626C6531094576656E744E616D6506064F6E43
        616C63074576656E74494402210000}
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppDBPipelineSystem: TppDBPipeline
    DataSource = MainDm.dsSystem
    UserName = 'DBPipelineSystem'
    Left = 280
    Top = 792
  end
  object ppDBPipelineOIS: TppDBPipeline
    DataSource = dsVisitOIs
    UserName = 'DBPipelineOIS'
    Left = 416
    Top = 696
  end
  object ppDBPipelineVisits: TppDBPipeline
    DataSource = dsVisitSummary
    UserName = 'DBPipelineVisits'
    Left = 288
    Top = 744
  end
  object ppDBPipelineLabResults: TppDBPipeline
    DataSource = dsLaboratoryResults
    UserName = 'DBPipelineLabResults'
    Left = 416
    Top = 744
  end
  object ppDBPipelineWeights: TppDBPipeline
    DataSource = dsPatientWeight
    UserName = 'DBPipelineWeights'
    Left = 424
    Top = 792
  end
  object qryVisitSummary: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    BeforeEdit = TblClinicalVisitBeforeEdit
    BeforePost = TblClinicalVisitBeforePost
    AfterPost = TblClinicalVisitAfterPost
    OnNewRecord = TblClinicalVisitNewRecord
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TblVisit.* FROM TblVisit'
      'Where TblVisit.patient_ID=:person_id')
    Left = 40
    Top = 752
    object GuidField9: TGuidField
      FieldName = 'patient_ID'
      FixedChar = True
      Size = 38
    end
    object BooleanField1: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object BooleanField2: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object WideStringField17: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object WideStringField18: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'vstPropo_CoTri_Start_dat'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'vstPropo_CoTri_Stopped_dat'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Start_dat'
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Stopped_dat'
    end
    object DateTimeField10: TDateTimeField
      FieldName = 'vstPropo_INH_Start_dat'
    end
    object DateTimeField11: TDateTimeField
      FieldName = 'vstPropo_INH_Stopped_dat'
    end
    object DateTimeField12: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Start_dat'
    end
    object DateTimeField13: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Stopped_dat'
    end
    object WideStringField19: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object WideStringField20: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object WideStringField21: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object DateTimeField14: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object DateTimeField15: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object DateTimeField16: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object WideStringField22: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object DateTimeField17: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object DateTimeField18: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object DateTimeField19: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object GuidField10: TGuidField
      FieldName = 'user_id'
      FixedChar = True
      Size = 38
    end
    object BooleanField3: TBooleanField
      FieldName = 'completed_bol'
    end
    object GuidField11: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object DateTimeField20: TDateTimeField
      FieldName = 'vstPregnancyExpectedDelivery_dat'
    end
    object StringField1: TStringField
      FieldName = 'vstPregnancyTrimister_str'
      FixedChar = True
      Size = 10
    end
    object MemoField1: TMemoField
      FieldName = 'notes_mem'
      BlobType = ftMemo
    end
    object WideStringField23: TWideStringField
      FieldName = 'visitType_str'
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'vstWeanAgeYears_int'
    end
    object StringField2: TStringField
      FieldName = 'vstFeedingType_str'
      FixedChar = True
      Size = 1
    end
    object WideStringField24: TWideStringField
      FieldName = 'vstPartumProphylaxis_str'
      Size = 15
    end
    object DateTimeField21: TDateTimeField
      FieldName = 'vstPregnancyLNMP_dat'
    end
    object WideStringField25: TWideStringField
      FieldName = 'vstTreatmentStoppedBy_str'
    end
  end
  object dsVisitSummary: TDataSource
    DataSet = qryVisitSummary
    Left = 152
    Top = 744
  end
  object LastDrugPickVisit: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TOP 1 * FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'AND vstNextVisitType_str LIKE '#39'%Drug%'#39
      'ORDER BY vstVisitDate_dat Desc')
    Left = 632
    Top = 280
    object BooleanField4: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object BooleanField5: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object DateTimeField22: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object WideStringField26: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object WideStringField27: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object DateTimeField23: TDateTimeField
      FieldName = 'vstPropo_CoTri_Start_dat'
    end
    object DateTimeField24: TDateTimeField
      FieldName = 'vstPropo_CoTri_Stopped_dat'
    end
    object DateTimeField25: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Start_dat'
    end
    object DateTimeField26: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Stopped_dat'
    end
    object DateTimeField27: TDateTimeField
      FieldName = 'vstPropo_INH_Start_dat'
    end
    object DateTimeField28: TDateTimeField
      FieldName = 'vstPropo_INH_Stopped_dat'
    end
    object DateTimeField29: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Start_dat'
    end
    object DateTimeField30: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Stopped_dat'
    end
    object WideStringField29: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object WideStringField30: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object WideStringField31: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object DateTimeField31: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object DateTimeField32: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object DateTimeField33: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object WideStringField32: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object DateTimeField34: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object DateTimeField35: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object DateTimeField36: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object DateTimeField37: TDateTimeField
      FieldName = 'vstPregnancyExpectedDelivery_dat'
    end
    object StringField3: TStringField
      FieldName = 'vstPregnancyTrimister_str'
      FixedChar = True
      Size = 10
    end
    object WideStringField33: TWideStringField
      FieldName = 'visitType_str'
      Size = 50
    end
    object GuidField12: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object MemoField2: TMemoField
      FieldName = 'notes_mem'
      BlobType = ftMemo
    end
    object LastDrugPickVisitTBVisit_dat: TDateTimeField
      FieldName = 'TBVisit_dat'
    end
    object LastDrugPickVisitTBVisitType_str: TWideStringField
      FieldName = 'TBVisitType_str'
    end
    object LastDrugPickVisitTBSite_str: TWideStringField
      FieldName = 'TBSite_str'
      Size = 15
    end
    object LastDrugPickVisitTBDiagnosis_dat: TDateTimeField
      FieldName = 'TBDiagnosis_dat'
    end
    object LastDrugPickVisitTBExpectedCompletion_dat: TDateTimeField
      FieldName = 'TBExpectedCompletion_dat'
    end
    object LastDrugPickVisitTBCategory_str: TWideStringField
      FieldName = 'TBCategory_str'
    end
    object LastDrugPickVisitIPT_bol: TBooleanField
      FieldName = 'IPT_bol'
    end
    object LastDrugPickVisitIPTStart_dat: TDateTimeField
      FieldName = 'IPTStart_dat'
    end
    object LastDrugPickVisitIPTStop_dat: TDateTimeField
      FieldName = 'IPTStop_dat'
    end
    object LastDrugPickVisitTBStatus_str: TWideStringField
      FieldName = 'TBStatus_str'
      Size = 30
    end
    object LastDrugPickVisitTBOutcome_str: TWideStringField
      FieldName = 'TBOutcome_str'
      Size = 30
    end
    object LastDrugPickVisitTBOutcome_dat: TDateTimeField
      FieldName = 'TBOutcome_dat'
    end
    object LastDrugPickVisitTBReasonStoppingTBTreatment_str: TWideStringField
      FieldName = 'TBReasonStoppingTBTreatment_str'
      Size = 30
    end
    object LastDrugPickVisitTBRegimen_str: TWideStringField
      FieldName = 'TBRegimen_str'
      Size = 30
    end
    object LastDrugPickVisitTBRegimenChangeTo_str: TWideStringField
      FieldName = 'TBRegimenChangeTo_str'
      Size = 30
    end
    object LastDrugPickVisitTBRegimenChangeReason_str: TWideStringField
      FieldName = 'TBRegimenChangeReason_str'
      Size = 30
    end
    object LastDrugPickVisitTBScreened_bol: TBooleanField
      FieldName = 'TBScreened_bol'
    end
    object LastDrugPickVisitTBScreenResult_str: TWideStringField
      FieldName = 'TBScreenResult_str'
      Size = 30
    end
    object LastDrugPickVisitTBScheduled_dat: TDateTimeField
      FieldName = 'TBScheduled_dat'
    end
    object LastDrugPickVisitTBScheduledVisitType_str: TWideStringField
      FieldName = 'TBScheduledVisitType_str'
    end
    object LastDrugPickVisitTBNextVisit_dat: TDateTimeField
      FieldName = 'TBNextVisit_dat'
    end
    object LastDrugPickVisitTBNextVisitType_str: TWideStringField
      FieldName = 'TBNextVisitType_str'
    end
    object LastDrugPickVisitTBReTreatmentType_str: TWideStringField
      FieldName = 'TBReTreatmentType_str'
    end
    object LastDrugPickVisitvstScheduledTypeVisit_str: TWideStringField
      FieldName = 'vstScheduledTypeVisit_str'
    end
    object LastDrugPickVisitvstPregnancyLNMP_dat: TDateTimeField
      FieldName = 'vstPregnancyLNMP_dat'
    end
    object LastDrugPickVisitvstFeedingType_str: TStringField
      FieldName = 'vstFeedingType_str'
      FixedChar = True
      Size = 1
    end
    object LastDrugPickVisitvstWeanAgeYears_int: TIntegerField
      FieldName = 'vstWeanAgeYears_int'
    end
    object LastDrugPickVisitvstTreatmentStoppedBy_str: TWideStringField
      FieldName = 'vstTreatmentStoppedBy_str'
    end
    object LastDrugPickVisitvstPartumProphylaxis_str: TWideStringField
      FieldName = 'vstPartumProphylaxis_str'
      Size = 15
    end
    object LastDrugPickVisitTBExtraPulmonarySite_str: TWideStringField
      FieldName = 'TBExtraPulmonarySite_str'
    end
    object LastDrugPickVisitTBSputumSmear_str: TWideStringField
      FieldName = 'TBSputumSmear_str'
      Size = 10
    end
    object LastDrugPickVisitTBDiagnosedMethod_str: TWideStringField
      FieldName = 'TBDiagnosedMethod_str'
    end
    object LastDrugPickVisitTBDiagnosedMethodNotes_str: TWideStringField
      FieldName = 'TBDiagnosedMethodNotes_str'
      Size = 150
    end
    object LastDrugPickVisitTBDuration_int: TIntegerField
      FieldName = 'TBDuration_int'
    end
    object LastDrugPickVisitTBContinuationPhase_dat: TDateTimeField
      FieldName = 'TBContinuationPhase_dat'
    end
    object LastDrugPickVisitvstNextVisitType_str: TWideStringField
      FieldName = 'vstNextVisitType_str'
    end
  end
  object LastLabVisit: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TOP 1 * FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'AND vstNextVisitType_str LIKE '#39'%Lab%'#39
      'ORDER BY vstVisitDate_dat Desc')
    Left = 632
    Top = 328
    object BooleanField15: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object BooleanField16: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object DateTimeField38: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object WideStringField34: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object WideStringField35: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object DateTimeField39: TDateTimeField
      FieldName = 'vstPropo_CoTri_Start_dat'
    end
    object DateTimeField40: TDateTimeField
      FieldName = 'vstPropo_CoTri_Stopped_dat'
    end
    object DateTimeField41: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Start_dat'
    end
    object DateTimeField42: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Stopped_dat'
    end
    object DateTimeField43: TDateTimeField
      FieldName = 'vstPropo_INH_Start_dat'
    end
    object DateTimeField44: TDateTimeField
      FieldName = 'vstPropo_INH_Stopped_dat'
    end
    object DateTimeField45: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Start_dat'
    end
    object DateTimeField46: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Stopped_dat'
    end
    object WideStringField37: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object WideStringField38: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object WideStringField39: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object DateTimeField47: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object DateTimeField48: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object DateTimeField49: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object WideStringField40: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object DateTimeField50: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object DateTimeField51: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object DateTimeField52: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object DateTimeField53: TDateTimeField
      FieldName = 'vstPregnancyExpectedDelivery_dat'
    end
    object StringField4: TStringField
      FieldName = 'vstPregnancyTrimister_str'
      FixedChar = True
      Size = 10
    end
    object WideStringField41: TWideStringField
      FieldName = 'visitType_str'
      Size = 50
    end
    object GuidField13: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object MemoField3: TMemoField
      FieldName = 'notes_mem'
      BlobType = ftMemo
    end
    object LastLabVisitTBVisit_dat: TDateTimeField
      FieldName = 'TBVisit_dat'
    end
    object LastLabVisitTBVisitType_str: TWideStringField
      FieldName = 'TBVisitType_str'
    end
    object LastLabVisitTBSite_str: TWideStringField
      FieldName = 'TBSite_str'
      Size = 15
    end
    object LastLabVisitTBDiagnosis_dat: TDateTimeField
      FieldName = 'TBDiagnosis_dat'
    end
    object LastLabVisitTBExpectedCompletion_dat: TDateTimeField
      FieldName = 'TBExpectedCompletion_dat'
    end
    object LastLabVisitTBCategory_str: TWideStringField
      FieldName = 'TBCategory_str'
    end
    object LastLabVisitIPT_bol: TBooleanField
      FieldName = 'IPT_bol'
    end
    object LastLabVisitIPTStart_dat: TDateTimeField
      FieldName = 'IPTStart_dat'
    end
    object LastLabVisitIPTStop_dat: TDateTimeField
      FieldName = 'IPTStop_dat'
    end
    object LastLabVisitTBStatus_str: TWideStringField
      FieldName = 'TBStatus_str'
      Size = 30
    end
    object LastLabVisitTBOutcome_str: TWideStringField
      FieldName = 'TBOutcome_str'
      Size = 30
    end
    object LastLabVisitTBOutcome_dat: TDateTimeField
      FieldName = 'TBOutcome_dat'
    end
    object LastLabVisitTBReasonStoppingTBTreatment_str: TWideStringField
      FieldName = 'TBReasonStoppingTBTreatment_str'
      Size = 30
    end
    object LastLabVisitTBRegimen_str: TWideStringField
      FieldName = 'TBRegimen_str'
      Size = 30
    end
    object LastLabVisitTBRegimenChangeTo_str: TWideStringField
      FieldName = 'TBRegimenChangeTo_str'
      Size = 30
    end
    object LastLabVisitTBRegimenChangeReason_str: TWideStringField
      FieldName = 'TBRegimenChangeReason_str'
      Size = 30
    end
    object LastLabVisitTBScreened_bol: TBooleanField
      FieldName = 'TBScreened_bol'
    end
    object LastLabVisitTBScreenResult_str: TWideStringField
      FieldName = 'TBScreenResult_str'
      Size = 30
    end
    object LastLabVisitTBScheduled_dat: TDateTimeField
      FieldName = 'TBScheduled_dat'
    end
    object LastLabVisitTBScheduledVisitType_str: TWideStringField
      FieldName = 'TBScheduledVisitType_str'
    end
    object LastLabVisitTBNextVisit_dat: TDateTimeField
      FieldName = 'TBNextVisit_dat'
    end
    object LastLabVisitTBNextVisitType_str: TWideStringField
      FieldName = 'TBNextVisitType_str'
    end
    object LastLabVisitTBReTreatmentType_str: TWideStringField
      FieldName = 'TBReTreatmentType_str'
    end
    object LastLabVisitvstScheduledTypeVisit_str: TWideStringField
      FieldName = 'vstScheduledTypeVisit_str'
    end
    object LastLabVisitvstPregnancyLNMP_dat: TDateTimeField
      FieldName = 'vstPregnancyLNMP_dat'
    end
    object LastLabVisitvstFeedingType_str: TStringField
      FieldName = 'vstFeedingType_str'
      FixedChar = True
      Size = 1
    end
    object LastLabVisitvstWeanAgeYears_int: TIntegerField
      FieldName = 'vstWeanAgeYears_int'
    end
    object LastLabVisitvstTreatmentStoppedBy_str: TWideStringField
      FieldName = 'vstTreatmentStoppedBy_str'
    end
    object LastLabVisitvstPartumProphylaxis_str: TWideStringField
      FieldName = 'vstPartumProphylaxis_str'
      Size = 15
    end
    object LastLabVisitTBExtraPulmonarySite_str: TWideStringField
      FieldName = 'TBExtraPulmonarySite_str'
    end
    object LastLabVisitTBSputumSmear_str: TWideStringField
      FieldName = 'TBSputumSmear_str'
      Size = 10
    end
    object LastLabVisitTBDiagnosedMethod_str: TWideStringField
      FieldName = 'TBDiagnosedMethod_str'
    end
    object LastLabVisitTBDiagnosedMethodNotes_str: TWideStringField
      FieldName = 'TBDiagnosedMethodNotes_str'
      Size = 150
    end
    object LastLabVisitTBDuration_int: TIntegerField
      FieldName = 'TBDuration_int'
    end
    object LastLabVisitTBContinuationPhase_dat: TDateTimeField
      FieldName = 'TBContinuationPhase_dat'
    end
    object LastLabVisitvstNextVisitType_str: TWideStringField
      FieldName = 'vstNextVisitType_str'
    end
  end
  object LastClinicalReview: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TOP 1 * FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'AND vstNextVisitType_str LIKE '#39'%Clinical%'#39
      'ORDER BY vstVisitDate_dat Desc')
    Left = 712
    Top = 328
    object BooleanField26: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object BooleanField27: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object DateTimeField54: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object WideStringField42: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object WideStringField43: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object DateTimeField55: TDateTimeField
      FieldName = 'vstPropo_CoTri_Start_dat'
    end
    object DateTimeField56: TDateTimeField
      FieldName = 'vstPropo_CoTri_Stopped_dat'
    end
    object DateTimeField57: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Start_dat'
    end
    object DateTimeField58: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Stopped_dat'
    end
    object DateTimeField59: TDateTimeField
      FieldName = 'vstPropo_INH_Start_dat'
    end
    object DateTimeField60: TDateTimeField
      FieldName = 'vstPropo_INH_Stopped_dat'
    end
    object DateTimeField61: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Start_dat'
    end
    object DateTimeField62: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Stopped_dat'
    end
    object WideStringField45: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object WideStringField46: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object WideStringField47: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object DateTimeField63: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object DateTimeField64: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object DateTimeField65: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object WideStringField48: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object DateTimeField66: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object DateTimeField67: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object DateTimeField68: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object DateTimeField69: TDateTimeField
      FieldName = 'vstPregnancyExpectedDelivery_dat'
    end
    object StringField5: TStringField
      FieldName = 'vstPregnancyTrimister_str'
      FixedChar = True
      Size = 10
    end
    object WideStringField49: TWideStringField
      FieldName = 'visitType_str'
      Size = 50
    end
    object GuidField14: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object MemoField4: TMemoField
      FieldName = 'notes_mem'
      BlobType = ftMemo
    end
    object LastClinicalReviewTBVisit_dat: TDateTimeField
      FieldName = 'TBVisit_dat'
    end
    object LastClinicalReviewTBVisitType_str: TWideStringField
      FieldName = 'TBVisitType_str'
    end
    object LastClinicalReviewTBSite_str: TWideStringField
      FieldName = 'TBSite_str'
      Size = 15
    end
    object LastClinicalReviewTBDiagnosis_dat: TDateTimeField
      FieldName = 'TBDiagnosis_dat'
    end
    object LastClinicalReviewTBExpectedCompletion_dat: TDateTimeField
      FieldName = 'TBExpectedCompletion_dat'
    end
    object LastClinicalReviewTBCategory_str: TWideStringField
      FieldName = 'TBCategory_str'
    end
    object LastClinicalReviewIPT_bol: TBooleanField
      FieldName = 'IPT_bol'
    end
    object LastClinicalReviewIPTStart_dat: TDateTimeField
      FieldName = 'IPTStart_dat'
    end
    object LastClinicalReviewIPTStop_dat: TDateTimeField
      FieldName = 'IPTStop_dat'
    end
    object LastClinicalReviewTBStatus_str: TWideStringField
      FieldName = 'TBStatus_str'
      Size = 30
    end
    object LastClinicalReviewTBOutcome_str: TWideStringField
      FieldName = 'TBOutcome_str'
      Size = 30
    end
    object LastClinicalReviewTBOutcome_dat: TDateTimeField
      FieldName = 'TBOutcome_dat'
    end
    object LastClinicalReviewTBReasonStoppingTBTreatment_str: TWideStringField
      FieldName = 'TBReasonStoppingTBTreatment_str'
      Size = 30
    end
    object LastClinicalReviewTBRegimen_str: TWideStringField
      FieldName = 'TBRegimen_str'
      Size = 30
    end
    object LastClinicalReviewTBRegimenChangeTo_str: TWideStringField
      FieldName = 'TBRegimenChangeTo_str'
      Size = 30
    end
    object LastClinicalReviewTBRegimenChangeReason_str: TWideStringField
      FieldName = 'TBRegimenChangeReason_str'
      Size = 30
    end
    object LastClinicalReviewTBScreened_bol: TBooleanField
      FieldName = 'TBScreened_bol'
    end
    object LastClinicalReviewTBScreenResult_str: TWideStringField
      FieldName = 'TBScreenResult_str'
      Size = 30
    end
    object LastClinicalReviewTBScheduled_dat: TDateTimeField
      FieldName = 'TBScheduled_dat'
    end
    object LastClinicalReviewTBScheduledVisitType_str: TWideStringField
      FieldName = 'TBScheduledVisitType_str'
    end
    object LastClinicalReviewTBNextVisit_dat: TDateTimeField
      FieldName = 'TBNextVisit_dat'
    end
    object LastClinicalReviewTBNextVisitType_str: TWideStringField
      FieldName = 'TBNextVisitType_str'
    end
    object LastClinicalReviewTBReTreatmentType_str: TWideStringField
      FieldName = 'TBReTreatmentType_str'
    end
    object LastClinicalReviewvstScheduledTypeVisit_str: TWideStringField
      FieldName = 'vstScheduledTypeVisit_str'
    end
    object LastClinicalReviewvstPregnancyLNMP_dat: TDateTimeField
      FieldName = 'vstPregnancyLNMP_dat'
    end
    object LastClinicalReviewvstFeedingType_str: TStringField
      FieldName = 'vstFeedingType_str'
      FixedChar = True
      Size = 1
    end
    object LastClinicalReviewvstWeanAgeYears_int: TIntegerField
      FieldName = 'vstWeanAgeYears_int'
    end
    object LastClinicalReviewvstTreatmentStoppedBy_str: TWideStringField
      FieldName = 'vstTreatmentStoppedBy_str'
    end
    object LastClinicalReviewvstPartumProphylaxis_str: TWideStringField
      FieldName = 'vstPartumProphylaxis_str'
      Size = 15
    end
    object LastClinicalReviewTBExtraPulmonarySite_str: TWideStringField
      FieldName = 'TBExtraPulmonarySite_str'
    end
    object LastClinicalReviewTBSputumSmear_str: TWideStringField
      FieldName = 'TBSputumSmear_str'
      Size = 10
    end
    object LastClinicalReviewTBDiagnosedMethod_str: TWideStringField
      FieldName = 'TBDiagnosedMethod_str'
    end
    object LastClinicalReviewTBDiagnosedMethodNotes_str: TWideStringField
      FieldName = 'TBDiagnosedMethodNotes_str'
      Size = 150
    end
    object LastClinicalReviewTBDuration_int: TIntegerField
      FieldName = 'TBDuration_int'
    end
    object LastClinicalReviewTBContinuationPhase_dat: TDateTimeField
      FieldName = 'TBContinuationPhase_dat'
    end
    object LastClinicalReviewvstNextVisitType_str: TWideStringField
      FieldName = 'vstNextVisitType_str'
    end
  end
  object dsHandOvers: TDataSource
    DataSet = qryPatientHandOvers
    Left = 648
    Top = 440
  end
  object qryTodaysPatientHandovers: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <>
    SQL.Strings = (
      'SELECT tblVisitHandOvers.*,  tblperson.personDescription_str'
      
        'FROM tblVisitHandOvers INNER JOIN tblperson on tblperson.person_' +
        'ID = tblVisitHandOvers.patient_ID'
      'WHERE handOverTime_date < GetDate()'
      'AND handOverTime_date > GetDate() - 1'
      'Order By tblperson.personDescription_str, handOverTime_date DESC')
    Left = 712
    Top = 592
    object qryTodaysPatientHandovershandover_id: TAutoIncField
      FieldName = 'handover_id'
      ReadOnly = True
    end
    object qryTodaysPatientHandovershandOverTime_date: TDateTimeField
      FieldName = 'handOverTime_date'
    end
    object qryTodaysPatientHandoverspatient_id: TGuidField
      FieldName = 'patient_id'
      FixedChar = True
      Size = 38
    end
    object qryTodaysPatientHandoversmachineName_str: TWideStringField
      FieldName = 'machineName_str'
    end
    object qryTodaysPatientHandovershandOverToType_str: TWideStringField
      FieldName = 'handOverToType_str'
    end
    object qryTodaysPatientHandoversuser_id: TGuidField
      FieldName = 'user_id'
      FixedChar = True
      Size = 38
    end
    object qryTodaysPatientHandovershandOverByType_str: TWideStringField
      FieldName = 'handOverByType_str'
    end
    object qryTodaysPatientHandovershandOverNotes_str: TMemoField
      FieldName = 'handOverNotes_str'
      BlobType = ftMemo
    end
    object qryTodaysPatientHandovershandedOverToName_str: TWideStringField
      FieldName = 'handedOverToName_str'
    end
    object qryTodaysPatientHandovershandedOverToUser_ID: TGuidField
      FieldName = 'handedOverToUser_ID'
      FixedChar = True
      Size = 38
    end
    object qryTodaysPatientHandoverspersonDescription_str: TWideStringField
      FieldName = 'personDescription_str'
      Size = 150
    end
  end
  object dsTodaysPatientHandover: TDataSource
    DataSet = qryTodaysPatientHandovers
    Left = 856
    Top = 592
  end
  object ppDBPipelineTodaysHandovers: TppDBPipeline
    DataSource = dsTodaysPatientHandover
    UserName = 'DBPipelineTodaysHandovers'
    Left = 713
    Top = 648
  end
  object ppTodaysHandoversReport: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineTodaysHandovers
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 856
    Top = 648
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineTodaysHandovers'
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Todays handovers'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Name = 'ARIAL'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7324
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 56092
        BandType = 1
      end
    end
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'handOverByType_str'
        DataPipeline = ppDBPipelineTodaysHandovers
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelineTodaysHandovers'
        mmHeight = 4763
        mmLeft = 199232
        mmTop = 529
        mmWidth = 38100
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'handOverNotes_str'
        DataPipeline = ppDBPipelineTodaysHandovers
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelineTodaysHandovers'
        mmHeight = 7144
        mmLeft = 25135
        mmTop = 6350
        mmWidth = 212196
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'handOverTime_date'
        DataPipeline = ppDBPipelineTodaysHandovers
        DisplayFormat = ' h:nn:ss dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelineTodaysHandovers'
        mmHeight = 4763
        mmLeft = 81756
        mmTop = 529
        mmWidth = 35190
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'handOverToType_str'
        DataPipeline = ppDBPipelineTodaysHandovers
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelineTodaysHandovers'
        mmHeight = 4763
        mmLeft = 7938
        mmTop = 529
        mmWidth = 38100
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'machineName_str'
        DataPipeline = ppDBPipelineTodaysHandovers
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelineTodaysHandovers'
        mmHeight = 4763
        mmLeft = 157692
        mmTop = 529
        mmWidth = 38100
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'handover_id'
        DataPipeline = ppDBPipelineTodaysHandovers
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipelineTodaysHandovers'
        mmHeight = 4233
        mmLeft = 529
        mmTop = 529
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 13229
        mmTop = 6350
        mmWidth = 11113
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clTeal
        Pen.Width = 5
        Weight = 3.75
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5027
        mmWidth = 264055
        BandType = 8
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3662
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 34692
        BandType = 8
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3662
        mmLeft = 255323
        mmTop = 1323
        mmWidth = 10033
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'personDescription_str'
      DataPipeline = ppDBPipelineTodaysHandovers
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipelineTodaysHandovers'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12171
        mmPrintPosition = 0
        object ppDBText31: TppDBText
          UserName = 'DBText31'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'personDescription_str'
          DataPipeline = ppDBPipelineTodaysHandovers
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Name = 'ARIAL'
          Font.Size = 16
          Font.Style = [fsBold, fsUnderline]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipelineTodaysHandovers'
          mmHeight = 6519
          mmLeft = 529
          mmTop = 0
          mmWidth = 40132
          BandType = 3
          GroupNo = 0
        end
        object ppLine16: TppLine
          UserName = 'Line16'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Color = clTeal
          Pen.Width = 2
          Weight = 1.5
          mmHeight = 529
          mmLeft = 1323
          mmTop = 11641
          mmWidth = 264055
          BandType = 3
          GroupNo = 0
        end
        object ppLabel41: TppLabel
          UserName = 'Label41'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'By'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 199232
          mmTop = 7408
          mmWidth = 35719
          BandType = 3
          GroupNo = 0
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Handover Time'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 81756
          mmTop = 7408
          mmWidth = 35190
          BandType = 3
          GroupNo = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Handed over to'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 7938
          mmTop = 7408
          mmWidth = 35719
          BandType = 3
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Machine'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 157692
          mmTop = 7408
          mmWidth = 31221
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object qryPatientHasSimilarHandover: TADOQuery
    Connection = MainDm.PatientMainConnection
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'handOverToType_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM tblVisitHandOvers'
      'WHERE patient_Id =:person_ID'
      'AND handOverToType_str=:handOverToType_str')
    Left = 768
    Top = 456
  end
  object qryHandOverPeople: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'currentuser_id'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT UserID, username_str, Firstname_str, Lastname_str, UPPER(' +
        'Position_str) AS Position_str'
      'FROM tblSystem_User'
      'WHERE UserID <> :currentuser_id'
      'ORDER BY Position_str')
    Left = 752
    Top = 24
  end
  object dsqryHandOverPeople: TDataSource
    DataSet = qryHandOverPeople
    Left = 856
    Top = 24
  end
  object qryReligion: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tlkReligion'
      'ORDER BY ReligionDescription_str')
    Left = 752
    Top = 96
  end
  object dsReligion: TDataSource
    DataSet = qryReligion
    Left = 832
    Top = 96
  end
  object dsVisitNutrition: TDataSource
    DataSet = qryVisitNutrition
    Left = 152
    Top = 808
  end
  object qryVisitNutrition: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    OnNewRecord = qryVisitNutritionNewRecord
    DataSource = dsClinicalVisit
    Parameters = <
      item
        Name = 'visit_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM tblVisitNutritional'
      'WHERE tblVisitNutritional.Visit_ID =:visit_ID')
    Left = 40
    Top = 808
  end
  object LastCounselling: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TOP 1 * FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'AND vstNextVisitType_str LIKE '#39'%Counselling%'#39
      'ORDER BY vstVisitDate_dat Desc')
    Left = 712
    Top = 280
    object BooleanField6: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object BooleanField7: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object DateTimeField70: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object WideStringField28: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object WideStringField36: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object DateTimeField71: TDateTimeField
      FieldName = 'vstPropo_CoTri_Start_dat'
    end
    object DateTimeField72: TDateTimeField
      FieldName = 'vstPropo_CoTri_Stopped_dat'
    end
    object DateTimeField73: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Start_dat'
    end
    object DateTimeField74: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Stopped_dat'
    end
    object DateTimeField75: TDateTimeField
      FieldName = 'vstPropo_INH_Start_dat'
    end
    object DateTimeField76: TDateTimeField
      FieldName = 'vstPropo_INH_Stopped_dat'
    end
    object DateTimeField77: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Start_dat'
    end
    object DateTimeField78: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Stopped_dat'
    end
    object WideStringField44: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object WideStringField50: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object WideStringField51: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object DateTimeField79: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object DateTimeField80: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object DateTimeField81: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object WideStringField52: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object DateTimeField82: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object DateTimeField83: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object DateTimeField84: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object DateTimeField85: TDateTimeField
      FieldName = 'vstPregnancyExpectedDelivery_dat'
    end
    object StringField6: TStringField
      FieldName = 'vstPregnancyTrimister_str'
      FixedChar = True
      Size = 10
    end
    object WideStringField53: TWideStringField
      FieldName = 'visitType_str'
      Size = 50
    end
    object GuidField15: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object MemoField5: TMemoField
      FieldName = 'notes_mem'
      BlobType = ftMemo
    end
    object DateTimeField86: TDateTimeField
      FieldName = 'TBVisit_dat'
    end
    object WideStringField54: TWideStringField
      FieldName = 'TBVisitType_str'
    end
    object WideStringField55: TWideStringField
      FieldName = 'TBSite_str'
      Size = 15
    end
    object DateTimeField87: TDateTimeField
      FieldName = 'TBDiagnosis_dat'
    end
    object DateTimeField88: TDateTimeField
      FieldName = 'TBExpectedCompletion_dat'
    end
    object WideStringField56: TWideStringField
      FieldName = 'TBCategory_str'
    end
    object BooleanField8: TBooleanField
      FieldName = 'IPT_bol'
    end
    object DateTimeField89: TDateTimeField
      FieldName = 'IPTStart_dat'
    end
    object DateTimeField90: TDateTimeField
      FieldName = 'IPTStop_dat'
    end
    object WideStringField57: TWideStringField
      FieldName = 'TBStatus_str'
      Size = 30
    end
    object WideStringField58: TWideStringField
      FieldName = 'TBOutcome_str'
      Size = 30
    end
    object DateTimeField91: TDateTimeField
      FieldName = 'TBOutcome_dat'
    end
    object WideStringField59: TWideStringField
      FieldName = 'TBReasonStoppingTBTreatment_str'
      Size = 30
    end
    object WideStringField60: TWideStringField
      FieldName = 'TBRegimen_str'
      Size = 30
    end
    object WideStringField61: TWideStringField
      FieldName = 'TBRegimenChangeTo_str'
      Size = 30
    end
    object WideStringField62: TWideStringField
      FieldName = 'TBRegimenChangeReason_str'
      Size = 30
    end
    object BooleanField9: TBooleanField
      FieldName = 'TBScreened_bol'
    end
    object WideStringField63: TWideStringField
      FieldName = 'TBScreenResult_str'
      Size = 30
    end
    object DateTimeField92: TDateTimeField
      FieldName = 'TBScheduled_dat'
    end
    object WideStringField64: TWideStringField
      FieldName = 'TBScheduledVisitType_str'
    end
    object DateTimeField93: TDateTimeField
      FieldName = 'TBNextVisit_dat'
    end
    object WideStringField65: TWideStringField
      FieldName = 'TBNextVisitType_str'
    end
    object WideStringField66: TWideStringField
      FieldName = 'TBReTreatmentType_str'
    end
    object WideStringField67: TWideStringField
      FieldName = 'vstScheduledTypeVisit_str'
    end
    object DateTimeField94: TDateTimeField
      FieldName = 'vstPregnancyLNMP_dat'
    end
    object StringField7: TStringField
      FieldName = 'vstFeedingType_str'
      FixedChar = True
      Size = 1
    end
    object IntegerField2: TIntegerField
      FieldName = 'vstWeanAgeYears_int'
    end
    object WideStringField69: TWideStringField
      FieldName = 'vstTreatmentStoppedBy_str'
    end
    object WideStringField70: TWideStringField
      FieldName = 'vstPartumProphylaxis_str'
      Size = 15
    end
    object WideStringField71: TWideStringField
      FieldName = 'TBExtraPulmonarySite_str'
    end
    object WideStringField72: TWideStringField
      FieldName = 'TBSputumSmear_str'
      Size = 10
    end
    object WideStringField73: TWideStringField
      FieldName = 'TBDiagnosedMethod_str'
    end
    object WideStringField74: TWideStringField
      FieldName = 'TBDiagnosedMethodNotes_str'
      Size = 150
    end
    object IntegerField3: TIntegerField
      FieldName = 'TBDuration_int'
    end
    object DateTimeField95: TDateTimeField
      FieldName = 'TBContinuationPhase_dat'
    end
    object LastCounsellingvstNextVisitType_str: TWideStringField
      FieldName = 'vstNextVisitType_str'
      Size = 40
    end
  end
  object qryLastNewRegimen: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TOP 1 * FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'AND vstRegimenChange_To_str IS NOT NULL'
      'ORDER BY vstVisitDate_dat Desc')
    Left = 712
    Top = 720
    object WideStringField78: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
  end
  object qryLastFeedingType: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TOP 1 * FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'AND vstFeedingType_str IS NOT NULL'
      'ORDER BY vstVisitDate_dat Desc')
    Left = 720
    Top = 784
    object qryLastFeedingTypevstFeedingType_str: TStringField
      FieldName = 'vstFeedingType_str'
      FixedChar = True
      Size = 1
    end
  end
  object LastTBPickVisit: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TOP 1 * FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'AND TBNextVisitType_str LIKE '#39'%Drug%'#39
      'ORDER BY TBVisit_dat Desc')
    Left = 888
    Top = 208
    object LastTBPickVisitVisit_ID: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBPickVisitpatient_ID: TGuidField
      FieldName = 'patient_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBPickVisitpersonpregnant_bol: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object LastTBPickVisitvstTreamentPrescribed_bol: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object LastTBPickVisitvstPregnancyLNMP_dat: TDateTimeField
      FieldName = 'vstPregnancyLNMP_dat'
    end
    object LastTBPickVisitvstPregnancyDeliveryDate_dat: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object LastTBPickVisitvstPregnancyExpectedDelivery_dat: TDateTimeField
      FieldName = 'vstPregnancyExpectedDelivery_dat'
    end
    object LastTBPickVisitvstPregnancyTrimister_str: TStringField
      FieldName = 'vstPregnancyTrimister_str'
      FixedChar = True
      Size = 10
    end
    object LastTBPickVisitvstFeedingType_str: TStringField
      FieldName = 'vstFeedingType_str'
      FixedChar = True
      Size = 1
    end
    object LastTBPickVisitvstWeanAgeYears_int: TIntegerField
      FieldName = 'vstWeanAgeYears_int'
    end
    object LastTBPickVisitvstFunctionalStatus_str: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object LastTBPickVisitvstClinicalStage_str: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object LastTBPickVisitvstPropo_CoTri_Start_dat: TDateTimeField
      FieldName = 'vstPropo_CoTri_Start_dat'
    end
    object LastTBPickVisitvstPropo_CoTri_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_CoTri_Stopped_dat'
    end
    object LastTBPickVisitvstPropo_Fluconazole_Start_dat: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Start_dat'
    end
    object LastTBPickVisitvstPropo_Fluconazole_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Stopped_dat'
    end
    object LastTBPickVisitvstPropo_INH_Start_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Start_dat'
    end
    object LastTBPickVisitvstPropo_INH_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Stopped_dat'
    end
    object LastTBPickVisitvstRegimenChange_From_str: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object LastTBPickVisitvstRegimenChange_To_str: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object LastTBPickVisitvstRegimenChange_Reason_str: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object LastTBPickVisitvstVisitDate_dat: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object LastTBPickVisitvstNextVisit_dat: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object LastTBPickVisitvstNextVisitType_str: TWideStringField
      FieldName = 'vstNextVisitType_str'
      Size = 40
    end
    object LastTBPickVisitvstScheduledVisit_dat: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object LastTBPickVisitvstScheduledTypeVisit_str: TWideStringField
      FieldName = 'vstScheduledTypeVisit_str'
      Size = 40
    end
    object LastTBPickVisitvstRegimenStart_str: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object LastTBPickVisitvstLostToFollowUpDate_dat: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object LastTBPickVisitvstTreatmentStopped_date_dat: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object LastTBPickVisitvstTreatmentStoppedBy_str: TWideStringField
      FieldName = 'vstTreatmentStoppedBy_str'
    end
    object LastTBPickVisitvstRegimenStartDate_dat: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object LastTBPickVisitvstPartumProphylaxis_str: TWideStringField
      FieldName = 'vstPartumProphylaxis_str'
      Size = 15
    end
    object LastTBPickVisituser_id: TGuidField
      FieldName = 'user_id'
      FixedChar = True
      Size = 38
    end
    object LastTBPickVisitcompleted_bol: TBooleanField
      FieldName = 'completed_bol'
    end
    object LastTBPickVisitCaptured_dat: TDateTimeField
      FieldName = 'Captured_dat'
    end
    object LastTBPickVisitnotes_mem: TMemoField
      FieldName = 'notes_mem'
      BlobType = ftMemo
    end
    object LastTBPickVisitvisitType_str: TWideStringField
      FieldName = 'visitType_str'
      Size = 40
    end
    object LastTBPickVisitTBVisit_dat: TDateTimeField
      FieldName = 'TBVisit_dat'
    end
    object LastTBPickVisitTBVisitType_str: TWideStringField
      FieldName = 'TBVisitType_str'
      Size = 40
    end
    object LastTBPickVisitTBSite_str: TWideStringField
      FieldName = 'TBSite_str'
      Size = 15
    end
    object LastTBPickVisitTBExtraPulmonarySite_str: TWideStringField
      FieldName = 'TBExtraPulmonarySite_str'
    end
    object LastTBPickVisitTBSputumSmear_str: TWideStringField
      FieldName = 'TBSputumSmear_str'
      Size = 10
    end
    object LastTBPickVisitTBDiagnosis_dat: TDateTimeField
      FieldName = 'TBDiagnosis_dat'
    end
    object LastTBPickVisitTBDiagnosedMethod_str: TWideStringField
      FieldName = 'TBDiagnosedMethod_str'
    end
    object LastTBPickVisitTBDiagnosedMethodNotes_str: TWideStringField
      FieldName = 'TBDiagnosedMethodNotes_str'
      Size = 150
    end
    object LastTBPickVisitTBExpectedCompletion_dat: TDateTimeField
      FieldName = 'TBExpectedCompletion_dat'
    end
    object LastTBPickVisitTBCategory_str: TWideStringField
      FieldName = 'TBCategory_str'
      Size = 40
    end
    object LastTBPickVisitIPT_bol: TBooleanField
      FieldName = 'IPT_bol'
    end
    object LastTBPickVisitIPTStart_dat: TDateTimeField
      FieldName = 'IPTStart_dat'
    end
    object LastTBPickVisitIPTStop_dat: TDateTimeField
      FieldName = 'IPTStop_dat'
    end
    object LastTBPickVisitTBStatus_str: TWideStringField
      FieldName = 'TBStatus_str'
      Size = 30
    end
    object LastTBPickVisitTBOutcome_str: TWideStringField
      FieldName = 'TBOutcome_str'
      Size = 30
    end
    object LastTBPickVisitTBOutcome_dat: TDateTimeField
      FieldName = 'TBOutcome_dat'
    end
    object LastTBPickVisitvstPropo_TBTreatment_Start_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Start_dat'
    end
    object LastTBPickVisitvstPropo_TBTreatment_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Stopped_dat'
    end
    object LastTBPickVisitTBReasonStoppingTBTreatment_str: TWideStringField
      FieldName = 'TBReasonStoppingTBTreatment_str'
      Size = 30
    end
    object LastTBPickVisitTBRegimen_str: TWideStringField
      FieldName = 'TBRegimen_str'
      Size = 30
    end
    object LastTBPickVisitTBRegimenChangeTo_str: TWideStringField
      FieldName = 'TBRegimenChangeTo_str'
      Size = 30
    end
    object LastTBPickVisitTBRegimenChangeReason_str: TWideStringField
      FieldName = 'TBRegimenChangeReason_str'
      Size = 30
    end
    object LastTBPickVisitTBScreened_bol: TBooleanField
      FieldName = 'TBScreened_bol'
    end
    object LastTBPickVisitTBScreenResult_str: TWideStringField
      FieldName = 'TBScreenResult_str'
      Size = 30
    end
    object LastTBPickVisitTBScheduled_dat: TDateTimeField
      FieldName = 'TBScheduled_dat'
    end
    object LastTBPickVisitTBScheduledVisitType_str: TWideStringField
      FieldName = 'TBScheduledVisitType_str'
    end
    object LastTBPickVisitTBNextVisit_dat: TDateTimeField
      FieldName = 'TBNextVisit_dat'
    end
    object LastTBPickVisitTBNextVisitType_str: TWideStringField
      FieldName = 'TBNextVisitType_str'
      Size = 40
    end
    object LastTBPickVisitTBReTreatmentType_str: TWideStringField
      FieldName = 'TBReTreatmentType_str'
      Size = 40
    end
    object LastTBPickVisitTBDuration_int: TIntegerField
      FieldName = 'TBDuration_int'
    end
    object LastTBPickVisitTBContinuationPhase_dat: TDateTimeField
      FieldName = 'TBContinuationPhase_dat'
    end
    object LastTBPickVisitvstTicketNumber_int: TIntegerField
      FieldName = 'vstTicketNumber_int'
    end
    object LastTBPickVisitvstOnBehalf_bol: TBooleanField
      FieldName = 'vstOnBehalf_bol'
    end
    object LastTBPickVisitvstOnBehalfID_str: TWideStringField
      FieldName = 'vstOnBehalfID_str'
    end
    object LastTBPickVisitadmitted_bol: TBooleanField
      FieldName = 'admitted_bol'
    end
    object LastTBPickVisitdepartmentWard_ID: TGuidField
      FieldName = 'departmentWard_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBPickVisitdepartmentWardBed_ID: TGuidField
      FieldName = 'departmentWardBed_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBPickVisitdischarge_dat: TDateTimeField
      FieldName = 'discharge_dat'
    end
    object LastTBPickVisitICD10_str: TStringField
      FieldName = 'ICD10_str'
      Size = 6
    end
    object LastTBPickVisitpersonTransferredInDate_dat: TDateTimeField
      FieldName = 'personTransferredInDate_dat'
    end
    object LastTBPickVisitpersonTransferredInFrom_str: TWideStringField
      FieldName = 'personTransferredInFrom_str'
      Size = 50
    end
    object LastTBPickVisitpersonTransferredOutDate_dat: TDateTimeField
      FieldName = 'personTransferredOutDate_dat'
    end
    object LastTBPickVisitpersonTransferredOutTo_str: TWideStringField
      FieldName = 'personTransferredOutTo_str'
      Size = 50
    end
  end
  object LastTBLabVisit: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TOP 1 * FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'AND TBNextVisitType_str LIKE '#39'%Lab%'#39
      'ORDER BY TBVisit_dat Desc')
    Left = 888
    Top = 264
    object LastTBLabVisitVisit_ID: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBLabVisitpatient_ID: TGuidField
      FieldName = 'patient_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBLabVisitpersonpregnant_bol: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object LastTBLabVisitvstTreamentPrescribed_bol: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object LastTBLabVisitvstPregnancyLNMP_dat: TDateTimeField
      FieldName = 'vstPregnancyLNMP_dat'
    end
    object LastTBLabVisitvstPregnancyDeliveryDate_dat: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object LastTBLabVisitvstPregnancyExpectedDelivery_dat: TDateTimeField
      FieldName = 'vstPregnancyExpectedDelivery_dat'
    end
    object LastTBLabVisitvstPregnancyTrimister_str: TStringField
      FieldName = 'vstPregnancyTrimister_str'
      FixedChar = True
      Size = 10
    end
    object LastTBLabVisitvstFeedingType_str: TStringField
      FieldName = 'vstFeedingType_str'
      FixedChar = True
      Size = 1
    end
    object LastTBLabVisitvstWeanAgeYears_int: TIntegerField
      FieldName = 'vstWeanAgeYears_int'
    end
    object LastTBLabVisitvstFunctionalStatus_str: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object LastTBLabVisitvstClinicalStage_str: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object LastTBLabVisitvstPropo_CoTri_Start_dat: TDateTimeField
      FieldName = 'vstPropo_CoTri_Start_dat'
    end
    object LastTBLabVisitvstPropo_CoTri_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_CoTri_Stopped_dat'
    end
    object LastTBLabVisitvstPropo_Fluconazole_Start_dat: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Start_dat'
    end
    object LastTBLabVisitvstPropo_Fluconazole_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Stopped_dat'
    end
    object LastTBLabVisitvstPropo_INH_Start_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Start_dat'
    end
    object LastTBLabVisitvstPropo_INH_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Stopped_dat'
    end
    object LastTBLabVisitvstRegimenChange_From_str: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object LastTBLabVisitvstRegimenChange_To_str: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object LastTBLabVisitvstRegimenChange_Reason_str: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object LastTBLabVisitvstVisitDate_dat: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object LastTBLabVisitvstNextVisit_dat: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object LastTBLabVisitvstNextVisitType_str: TWideStringField
      FieldName = 'vstNextVisitType_str'
      Size = 40
    end
    object LastTBLabVisitvstScheduledVisit_dat: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object LastTBLabVisitvstScheduledTypeVisit_str: TWideStringField
      FieldName = 'vstScheduledTypeVisit_str'
      Size = 40
    end
    object LastTBLabVisitvstRegimenStart_str: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object LastTBLabVisitvstLostToFollowUpDate_dat: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object LastTBLabVisitvstTreatmentStopped_date_dat: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object LastTBLabVisitvstTreatmentStoppedBy_str: TWideStringField
      FieldName = 'vstTreatmentStoppedBy_str'
    end
    object LastTBLabVisitvstRegimenStartDate_dat: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object LastTBLabVisitvstPartumProphylaxis_str: TWideStringField
      FieldName = 'vstPartumProphylaxis_str'
      Size = 15
    end
    object LastTBLabVisituser_id: TGuidField
      FieldName = 'user_id'
      FixedChar = True
      Size = 38
    end
    object LastTBLabVisitcompleted_bol: TBooleanField
      FieldName = 'completed_bol'
    end
    object LastTBLabVisitCaptured_dat: TDateTimeField
      FieldName = 'Captured_dat'
    end
    object LastTBLabVisitnotes_mem: TMemoField
      FieldName = 'notes_mem'
      BlobType = ftMemo
    end
    object LastTBLabVisitvisitType_str: TWideStringField
      FieldName = 'visitType_str'
      Size = 40
    end
    object LastTBLabVisitTBVisit_dat: TDateTimeField
      FieldName = 'TBVisit_dat'
    end
    object LastTBLabVisitTBVisitType_str: TWideStringField
      FieldName = 'TBVisitType_str'
      Size = 40
    end
    object LastTBLabVisitTBSite_str: TWideStringField
      FieldName = 'TBSite_str'
      Size = 15
    end
    object LastTBLabVisitTBExtraPulmonarySite_str: TWideStringField
      FieldName = 'TBExtraPulmonarySite_str'
    end
    object LastTBLabVisitTBSputumSmear_str: TWideStringField
      FieldName = 'TBSputumSmear_str'
      Size = 10
    end
    object LastTBLabVisitTBDiagnosis_dat: TDateTimeField
      FieldName = 'TBDiagnosis_dat'
    end
    object LastTBLabVisitTBDiagnosedMethod_str: TWideStringField
      FieldName = 'TBDiagnosedMethod_str'
    end
    object LastTBLabVisitTBDiagnosedMethodNotes_str: TWideStringField
      FieldName = 'TBDiagnosedMethodNotes_str'
      Size = 150
    end
    object LastTBLabVisitTBExpectedCompletion_dat: TDateTimeField
      FieldName = 'TBExpectedCompletion_dat'
    end
    object LastTBLabVisitTBCategory_str: TWideStringField
      FieldName = 'TBCategory_str'
      Size = 40
    end
    object LastTBLabVisitIPT_bol: TBooleanField
      FieldName = 'IPT_bol'
    end
    object LastTBLabVisitIPTStart_dat: TDateTimeField
      FieldName = 'IPTStart_dat'
    end
    object LastTBLabVisitIPTStop_dat: TDateTimeField
      FieldName = 'IPTStop_dat'
    end
    object LastTBLabVisitTBStatus_str: TWideStringField
      FieldName = 'TBStatus_str'
      Size = 30
    end
    object LastTBLabVisitTBOutcome_str: TWideStringField
      FieldName = 'TBOutcome_str'
      Size = 30
    end
    object LastTBLabVisitTBOutcome_dat: TDateTimeField
      FieldName = 'TBOutcome_dat'
    end
    object LastTBLabVisitvstPropo_TBTreatment_Start_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Start_dat'
    end
    object LastTBLabVisitvstPropo_TBTreatment_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Stopped_dat'
    end
    object LastTBLabVisitTBReasonStoppingTBTreatment_str: TWideStringField
      FieldName = 'TBReasonStoppingTBTreatment_str'
      Size = 30
    end
    object LastTBLabVisitTBRegimen_str: TWideStringField
      FieldName = 'TBRegimen_str'
      Size = 30
    end
    object LastTBLabVisitTBRegimenChangeTo_str: TWideStringField
      FieldName = 'TBRegimenChangeTo_str'
      Size = 30
    end
    object LastTBLabVisitTBRegimenChangeReason_str: TWideStringField
      FieldName = 'TBRegimenChangeReason_str'
      Size = 30
    end
    object LastTBLabVisitTBScreened_bol: TBooleanField
      FieldName = 'TBScreened_bol'
    end
    object LastTBLabVisitTBScreenResult_str: TWideStringField
      FieldName = 'TBScreenResult_str'
      Size = 30
    end
    object LastTBLabVisitTBScheduled_dat: TDateTimeField
      FieldName = 'TBScheduled_dat'
    end
    object LastTBLabVisitTBScheduledVisitType_str: TWideStringField
      FieldName = 'TBScheduledVisitType_str'
    end
    object LastTBLabVisitTBNextVisit_dat: TDateTimeField
      FieldName = 'TBNextVisit_dat'
    end
    object LastTBLabVisitTBNextVisitType_str: TWideStringField
      FieldName = 'TBNextVisitType_str'
      Size = 40
    end
    object LastTBLabVisitTBReTreatmentType_str: TWideStringField
      FieldName = 'TBReTreatmentType_str'
      Size = 40
    end
    object LastTBLabVisitTBDuration_int: TIntegerField
      FieldName = 'TBDuration_int'
    end
    object LastTBLabVisitTBContinuationPhase_dat: TDateTimeField
      FieldName = 'TBContinuationPhase_dat'
    end
    object LastTBLabVisitvstTicketNumber_int: TIntegerField
      FieldName = 'vstTicketNumber_int'
    end
    object LastTBLabVisitvstOnBehalf_bol: TBooleanField
      FieldName = 'vstOnBehalf_bol'
    end
    object LastTBLabVisitvstOnBehalfID_str: TWideStringField
      FieldName = 'vstOnBehalfID_str'
    end
    object LastTBLabVisitadmitted_bol: TBooleanField
      FieldName = 'admitted_bol'
    end
    object LastTBLabVisitdepartmentWard_ID: TGuidField
      FieldName = 'departmentWard_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBLabVisitdepartmentWardBed_ID: TGuidField
      FieldName = 'departmentWardBed_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBLabVisitdischarge_dat: TDateTimeField
      FieldName = 'discharge_dat'
    end
    object LastTBLabVisitICD10_str: TStringField
      FieldName = 'ICD10_str'
      Size = 6
    end
    object LastTBLabVisitpersonTransferredInDate_dat: TDateTimeField
      FieldName = 'personTransferredInDate_dat'
    end
    object LastTBLabVisitpersonTransferredInFrom_str: TWideStringField
      FieldName = 'personTransferredInFrom_str'
      Size = 50
    end
    object LastTBLabVisitpersonTransferredOutDate_dat: TDateTimeField
      FieldName = 'personTransferredOutDate_dat'
    end
    object LastTBLabVisitpersonTransferredOutTo_str: TWideStringField
      FieldName = 'personTransferredOutTo_str'
      Size = 50
    end
  end
  object LastTBCLinicalReview: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TOP 1 * FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'AND TBNextVisitType_str LIKE '#39'%Clinical%'#39
      'ORDER BY TBVisit_dat Desc')
    Left = 1000
    Top = 264
    object LastTBCLinicalReviewVisit_ID: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBCLinicalReviewpatient_ID: TGuidField
      FieldName = 'patient_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBCLinicalReviewpersonpregnant_bol: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object LastTBCLinicalReviewvstTreamentPrescribed_bol: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object LastTBCLinicalReviewvstPregnancyLNMP_dat: TDateTimeField
      FieldName = 'vstPregnancyLNMP_dat'
    end
    object LastTBCLinicalReviewvstPregnancyDeliveryDate_dat: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object LastTBCLinicalReviewvstPregnancyExpectedDelivery_dat: TDateTimeField
      FieldName = 'vstPregnancyExpectedDelivery_dat'
    end
    object LastTBCLinicalReviewvstPregnancyTrimister_str: TStringField
      FieldName = 'vstPregnancyTrimister_str'
      FixedChar = True
      Size = 10
    end
    object LastTBCLinicalReviewvstFeedingType_str: TStringField
      FieldName = 'vstFeedingType_str'
      FixedChar = True
      Size = 1
    end
    object LastTBCLinicalReviewvstWeanAgeYears_int: TIntegerField
      FieldName = 'vstWeanAgeYears_int'
    end
    object LastTBCLinicalReviewvstFunctionalStatus_str: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object LastTBCLinicalReviewvstClinicalStage_str: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object LastTBCLinicalReviewvstPropo_CoTri_Start_dat: TDateTimeField
      FieldName = 'vstPropo_CoTri_Start_dat'
    end
    object LastTBCLinicalReviewvstPropo_CoTri_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_CoTri_Stopped_dat'
    end
    object LastTBCLinicalReviewvstPropo_Fluconazole_Start_dat: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Start_dat'
    end
    object LastTBCLinicalReviewvstPropo_Fluconazole_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Stopped_dat'
    end
    object LastTBCLinicalReviewvstPropo_INH_Start_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Start_dat'
    end
    object LastTBCLinicalReviewvstPropo_INH_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Stopped_dat'
    end
    object LastTBCLinicalReviewvstRegimenChange_From_str: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object LastTBCLinicalReviewvstRegimenChange_To_str: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object LastTBCLinicalReviewvstRegimenChange_Reason_str: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object LastTBCLinicalReviewvstVisitDate_dat: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object LastTBCLinicalReviewvstNextVisit_dat: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object LastTBCLinicalReviewvstNextVisitType_str: TWideStringField
      FieldName = 'vstNextVisitType_str'
      Size = 40
    end
    object LastTBCLinicalReviewvstScheduledVisit_dat: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object LastTBCLinicalReviewvstScheduledTypeVisit_str: TWideStringField
      FieldName = 'vstScheduledTypeVisit_str'
      Size = 40
    end
    object LastTBCLinicalReviewvstRegimenStart_str: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object LastTBCLinicalReviewvstLostToFollowUpDate_dat: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object LastTBCLinicalReviewvstTreatmentStopped_date_dat: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object LastTBCLinicalReviewvstTreatmentStoppedBy_str: TWideStringField
      FieldName = 'vstTreatmentStoppedBy_str'
    end
    object LastTBCLinicalReviewvstRegimenStartDate_dat: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object LastTBCLinicalReviewvstPartumProphylaxis_str: TWideStringField
      FieldName = 'vstPartumProphylaxis_str'
      Size = 15
    end
    object LastTBCLinicalReviewuser_id: TGuidField
      FieldName = 'user_id'
      FixedChar = True
      Size = 38
    end
    object LastTBCLinicalReviewcompleted_bol: TBooleanField
      FieldName = 'completed_bol'
    end
    object LastTBCLinicalReviewCaptured_dat: TDateTimeField
      FieldName = 'Captured_dat'
    end
    object LastTBCLinicalReviewnotes_mem: TMemoField
      FieldName = 'notes_mem'
      BlobType = ftMemo
    end
    object LastTBCLinicalReviewvisitType_str: TWideStringField
      FieldName = 'visitType_str'
      Size = 40
    end
    object LastTBCLinicalReviewTBVisit_dat: TDateTimeField
      FieldName = 'TBVisit_dat'
    end
    object LastTBCLinicalReviewTBVisitType_str: TWideStringField
      FieldName = 'TBVisitType_str'
      Size = 40
    end
    object LastTBCLinicalReviewTBSite_str: TWideStringField
      FieldName = 'TBSite_str'
      Size = 15
    end
    object LastTBCLinicalReviewTBExtraPulmonarySite_str: TWideStringField
      FieldName = 'TBExtraPulmonarySite_str'
    end
    object LastTBCLinicalReviewTBSputumSmear_str: TWideStringField
      FieldName = 'TBSputumSmear_str'
      Size = 10
    end
    object LastTBCLinicalReviewTBDiagnosis_dat: TDateTimeField
      FieldName = 'TBDiagnosis_dat'
    end
    object LastTBCLinicalReviewTBDiagnosedMethod_str: TWideStringField
      FieldName = 'TBDiagnosedMethod_str'
    end
    object LastTBCLinicalReviewTBDiagnosedMethodNotes_str: TWideStringField
      FieldName = 'TBDiagnosedMethodNotes_str'
      Size = 150
    end
    object LastTBCLinicalReviewTBExpectedCompletion_dat: TDateTimeField
      FieldName = 'TBExpectedCompletion_dat'
    end
    object LastTBCLinicalReviewTBCategory_str: TWideStringField
      FieldName = 'TBCategory_str'
      Size = 40
    end
    object LastTBCLinicalReviewIPT_bol: TBooleanField
      FieldName = 'IPT_bol'
    end
    object LastTBCLinicalReviewIPTStart_dat: TDateTimeField
      FieldName = 'IPTStart_dat'
    end
    object LastTBCLinicalReviewIPTStop_dat: TDateTimeField
      FieldName = 'IPTStop_dat'
    end
    object LastTBCLinicalReviewTBStatus_str: TWideStringField
      FieldName = 'TBStatus_str'
      Size = 30
    end
    object LastTBCLinicalReviewTBOutcome_str: TWideStringField
      FieldName = 'TBOutcome_str'
      Size = 30
    end
    object LastTBCLinicalReviewTBOutcome_dat: TDateTimeField
      FieldName = 'TBOutcome_dat'
    end
    object LastTBCLinicalReviewvstPropo_TBTreatment_Start_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Start_dat'
    end
    object LastTBCLinicalReviewvstPropo_TBTreatment_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Stopped_dat'
    end
    object LastTBCLinicalReviewTBReasonStoppingTBTreatment_str: TWideStringField
      FieldName = 'TBReasonStoppingTBTreatment_str'
      Size = 30
    end
    object LastTBCLinicalReviewTBRegimen_str: TWideStringField
      FieldName = 'TBRegimen_str'
      Size = 30
    end
    object LastTBCLinicalReviewTBRegimenChangeTo_str: TWideStringField
      FieldName = 'TBRegimenChangeTo_str'
      Size = 30
    end
    object LastTBCLinicalReviewTBRegimenChangeReason_str: TWideStringField
      FieldName = 'TBRegimenChangeReason_str'
      Size = 30
    end
    object LastTBCLinicalReviewTBScreened_bol: TBooleanField
      FieldName = 'TBScreened_bol'
    end
    object LastTBCLinicalReviewTBScreenResult_str: TWideStringField
      FieldName = 'TBScreenResult_str'
      Size = 30
    end
    object LastTBCLinicalReviewTBScheduled_dat: TDateTimeField
      FieldName = 'TBScheduled_dat'
    end
    object LastTBCLinicalReviewTBScheduledVisitType_str: TWideStringField
      FieldName = 'TBScheduledVisitType_str'
    end
    object LastTBCLinicalReviewTBNextVisit_dat: TDateTimeField
      FieldName = 'TBNextVisit_dat'
    end
    object LastTBCLinicalReviewTBNextVisitType_str: TWideStringField
      FieldName = 'TBNextVisitType_str'
      Size = 40
    end
    object LastTBCLinicalReviewTBReTreatmentType_str: TWideStringField
      FieldName = 'TBReTreatmentType_str'
      Size = 40
    end
    object LastTBCLinicalReviewTBDuration_int: TIntegerField
      FieldName = 'TBDuration_int'
    end
    object LastTBCLinicalReviewTBContinuationPhase_dat: TDateTimeField
      FieldName = 'TBContinuationPhase_dat'
    end
    object LastTBCLinicalReviewvstTicketNumber_int: TIntegerField
      FieldName = 'vstTicketNumber_int'
    end
    object LastTBCLinicalReviewvstOnBehalf_bol: TBooleanField
      FieldName = 'vstOnBehalf_bol'
    end
    object LastTBCLinicalReviewvstOnBehalfID_str: TWideStringField
      FieldName = 'vstOnBehalfID_str'
    end
    object LastTBCLinicalReviewadmitted_bol: TBooleanField
      FieldName = 'admitted_bol'
    end
    object LastTBCLinicalReviewdepartmentWard_ID: TGuidField
      FieldName = 'departmentWard_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBCLinicalReviewdepartmentWardBed_ID: TGuidField
      FieldName = 'departmentWardBed_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBCLinicalReviewdischarge_dat: TDateTimeField
      FieldName = 'discharge_dat'
    end
    object LastTBCLinicalReviewICD10_str: TStringField
      FieldName = 'ICD10_str'
      Size = 6
    end
    object LastTBCLinicalReviewpersonTransferredInDate_dat: TDateTimeField
      FieldName = 'personTransferredInDate_dat'
    end
    object LastTBCLinicalReviewpersonTransferredInFrom_str: TWideStringField
      FieldName = 'personTransferredInFrom_str'
      Size = 50
    end
    object LastTBCLinicalReviewpersonTransferredOutDate_dat: TDateTimeField
      FieldName = 'personTransferredOutDate_dat'
    end
    object LastTBCLinicalReviewpersonTransferredOutTo_str: TWideStringField
      FieldName = 'personTransferredOutTo_str'
      Size = 50
    end
  end
  object LastTBCounselling: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TOP 1 * FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'AND TBNextVisitType_str LIKE '#39'%Counselling%'#39
      'ORDER BY TBVisit_dat Desc')
    Left = 992
    Top = 208
    object LastTBCounsellingVisit_ID: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBCounsellingpatient_ID: TGuidField
      FieldName = 'patient_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBCounsellingpersonpregnant_bol: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object LastTBCounsellingvstTreamentPrescribed_bol: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object LastTBCounsellingvstPregnancyLNMP_dat: TDateTimeField
      FieldName = 'vstPregnancyLNMP_dat'
    end
    object LastTBCounsellingvstPregnancyDeliveryDate_dat: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object LastTBCounsellingvstPregnancyExpectedDelivery_dat: TDateTimeField
      FieldName = 'vstPregnancyExpectedDelivery_dat'
    end
    object LastTBCounsellingvstPregnancyTrimister_str: TStringField
      FieldName = 'vstPregnancyTrimister_str'
      FixedChar = True
      Size = 10
    end
    object LastTBCounsellingvstFeedingType_str: TStringField
      FieldName = 'vstFeedingType_str'
      FixedChar = True
      Size = 1
    end
    object LastTBCounsellingvstWeanAgeYears_int: TIntegerField
      FieldName = 'vstWeanAgeYears_int'
    end
    object LastTBCounsellingvstFunctionalStatus_str: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object LastTBCounsellingvstClinicalStage_str: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object LastTBCounsellingvstPropo_CoTri_Start_dat: TDateTimeField
      FieldName = 'vstPropo_CoTri_Start_dat'
    end
    object LastTBCounsellingvstPropo_CoTri_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_CoTri_Stopped_dat'
    end
    object LastTBCounsellingvstPropo_Fluconazole_Start_dat: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Start_dat'
    end
    object LastTBCounsellingvstPropo_Fluconazole_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_Fluconazole_Stopped_dat'
    end
    object LastTBCounsellingvstPropo_INH_Start_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Start_dat'
    end
    object LastTBCounsellingvstPropo_INH_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Stopped_dat'
    end
    object LastTBCounsellingvstRegimenChange_From_str: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object LastTBCounsellingvstRegimenChange_To_str: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object LastTBCounsellingvstRegimenChange_Reason_str: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object LastTBCounsellingvstVisitDate_dat: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object LastTBCounsellingvstNextVisit_dat: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object LastTBCounsellingvstNextVisitType_str: TWideStringField
      FieldName = 'vstNextVisitType_str'
      Size = 40
    end
    object LastTBCounsellingvstScheduledVisit_dat: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object LastTBCounsellingvstScheduledTypeVisit_str: TWideStringField
      FieldName = 'vstScheduledTypeVisit_str'
      Size = 40
    end
    object LastTBCounsellingvstRegimenStart_str: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object LastTBCounsellingvstLostToFollowUpDate_dat: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object LastTBCounsellingvstTreatmentStopped_date_dat: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object LastTBCounsellingvstTreatmentStoppedBy_str: TWideStringField
      FieldName = 'vstTreatmentStoppedBy_str'
    end
    object LastTBCounsellingvstRegimenStartDate_dat: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object LastTBCounsellingvstPartumProphylaxis_str: TWideStringField
      FieldName = 'vstPartumProphylaxis_str'
      Size = 15
    end
    object LastTBCounsellinguser_id: TGuidField
      FieldName = 'user_id'
      FixedChar = True
      Size = 38
    end
    object LastTBCounsellingcompleted_bol: TBooleanField
      FieldName = 'completed_bol'
    end
    object LastTBCounsellingCaptured_dat: TDateTimeField
      FieldName = 'Captured_dat'
    end
    object LastTBCounsellingnotes_mem: TMemoField
      FieldName = 'notes_mem'
      BlobType = ftMemo
    end
    object LastTBCounsellingvisitType_str: TWideStringField
      FieldName = 'visitType_str'
      Size = 40
    end
    object LastTBCounsellingTBVisit_dat: TDateTimeField
      FieldName = 'TBVisit_dat'
    end
    object LastTBCounsellingTBVisitType_str: TWideStringField
      FieldName = 'TBVisitType_str'
      Size = 40
    end
    object LastTBCounsellingTBSite_str: TWideStringField
      FieldName = 'TBSite_str'
      Size = 15
    end
    object LastTBCounsellingTBExtraPulmonarySite_str: TWideStringField
      FieldName = 'TBExtraPulmonarySite_str'
    end
    object LastTBCounsellingTBSputumSmear_str: TWideStringField
      FieldName = 'TBSputumSmear_str'
      Size = 10
    end
    object LastTBCounsellingTBDiagnosis_dat: TDateTimeField
      FieldName = 'TBDiagnosis_dat'
    end
    object LastTBCounsellingTBDiagnosedMethod_str: TWideStringField
      FieldName = 'TBDiagnosedMethod_str'
    end
    object LastTBCounsellingTBDiagnosedMethodNotes_str: TWideStringField
      FieldName = 'TBDiagnosedMethodNotes_str'
      Size = 150
    end
    object LastTBCounsellingTBExpectedCompletion_dat: TDateTimeField
      FieldName = 'TBExpectedCompletion_dat'
    end
    object LastTBCounsellingTBCategory_str: TWideStringField
      FieldName = 'TBCategory_str'
      Size = 40
    end
    object LastTBCounsellingIPT_bol: TBooleanField
      FieldName = 'IPT_bol'
    end
    object LastTBCounsellingIPTStart_dat: TDateTimeField
      FieldName = 'IPTStart_dat'
    end
    object LastTBCounsellingIPTStop_dat: TDateTimeField
      FieldName = 'IPTStop_dat'
    end
    object LastTBCounsellingTBStatus_str: TWideStringField
      FieldName = 'TBStatus_str'
      Size = 30
    end
    object LastTBCounsellingTBOutcome_str: TWideStringField
      FieldName = 'TBOutcome_str'
      Size = 30
    end
    object LastTBCounsellingTBOutcome_dat: TDateTimeField
      FieldName = 'TBOutcome_dat'
    end
    object LastTBCounsellingvstPropo_TBTreatment_Start_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Start_dat'
    end
    object LastTBCounsellingvstPropo_TBTreatment_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Stopped_dat'
    end
    object LastTBCounsellingTBReasonStoppingTBTreatment_str: TWideStringField
      FieldName = 'TBReasonStoppingTBTreatment_str'
      Size = 30
    end
    object LastTBCounsellingTBRegimen_str: TWideStringField
      FieldName = 'TBRegimen_str'
      Size = 30
    end
    object LastTBCounsellingTBRegimenChangeTo_str: TWideStringField
      FieldName = 'TBRegimenChangeTo_str'
      Size = 30
    end
    object LastTBCounsellingTBRegimenChangeReason_str: TWideStringField
      FieldName = 'TBRegimenChangeReason_str'
      Size = 30
    end
    object LastTBCounsellingTBScreened_bol: TBooleanField
      FieldName = 'TBScreened_bol'
    end
    object LastTBCounsellingTBScreenResult_str: TWideStringField
      FieldName = 'TBScreenResult_str'
      Size = 30
    end
    object LastTBCounsellingTBScheduled_dat: TDateTimeField
      FieldName = 'TBScheduled_dat'
    end
    object LastTBCounsellingTBScheduledVisitType_str: TWideStringField
      FieldName = 'TBScheduledVisitType_str'
    end
    object LastTBCounsellingTBNextVisit_dat: TDateTimeField
      FieldName = 'TBNextVisit_dat'
    end
    object LastTBCounsellingTBNextVisitType_str: TWideStringField
      FieldName = 'TBNextVisitType_str'
      Size = 40
    end
    object LastTBCounsellingTBReTreatmentType_str: TWideStringField
      FieldName = 'TBReTreatmentType_str'
      Size = 40
    end
    object LastTBCounsellingTBDuration_int: TIntegerField
      FieldName = 'TBDuration_int'
    end
    object LastTBCounsellingTBContinuationPhase_dat: TDateTimeField
      FieldName = 'TBContinuationPhase_dat'
    end
    object LastTBCounsellingvstTicketNumber_int: TIntegerField
      FieldName = 'vstTicketNumber_int'
    end
    object LastTBCounsellingvstOnBehalf_bol: TBooleanField
      FieldName = 'vstOnBehalf_bol'
    end
    object LastTBCounsellingvstOnBehalfID_str: TWideStringField
      FieldName = 'vstOnBehalfID_str'
    end
    object LastTBCounsellingadmitted_bol: TBooleanField
      FieldName = 'admitted_bol'
    end
    object LastTBCounsellingdepartmentWard_ID: TGuidField
      FieldName = 'departmentWard_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBCounsellingdepartmentWardBed_ID: TGuidField
      FieldName = 'departmentWardBed_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBCounsellingdischarge_dat: TDateTimeField
      FieldName = 'discharge_dat'
    end
    object LastTBCounsellingICD10_str: TStringField
      FieldName = 'ICD10_str'
      Size = 6
    end
    object LastTBCounsellingpersonTransferredInDate_dat: TDateTimeField
      FieldName = 'personTransferredInDate_dat'
    end
    object LastTBCounsellingpersonTransferredInFrom_str: TWideStringField
      FieldName = 'personTransferredInFrom_str'
      Size = 50
    end
    object LastTBCounsellingpersonTransferredOutDate_dat: TDateTimeField
      FieldName = 'personTransferredOutDate_dat'
    end
    object LastTBCounsellingpersonTransferredOutTo_str: TWideStringField
      FieldName = 'personTransferredOutTo_str'
      Size = 50
    end
  end
  object LastTBVisit: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT TOP 1 * FROM tblVisit'
      'WHERE TblVisit.patient_ID=:person_id'
      'ORDER BY TBVisit_dat Desc')
    Left = 888
    Top = 376
    object LastTBVisitVisit_ID: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBVisitpatient_ID: TGuidField
      FieldName = 'patient_ID'
      FixedChar = True
      Size = 38
    end
    object LastTBVisitvstPropo_INH_Start_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Start_dat'
    end
    object LastTBVisitvstPropo_INH_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_INH_Stopped_dat'
    end
    object LastTBVisitTBVisit_dat: TDateTimeField
      FieldName = 'TBVisit_dat'
    end
    object LastTBVisitTBVisitType_str: TWideStringField
      FieldName = 'TBVisitType_str'
      Size = 40
    end
    object LastTBVisitTBSite_str: TWideStringField
      FieldName = 'TBSite_str'
      Size = 15
    end
    object LastTBVisitTBExtraPulmonarySite_str: TWideStringField
      FieldName = 'TBExtraPulmonarySite_str'
    end
    object LastTBVisitTBSputumSmear_str: TWideStringField
      FieldName = 'TBSputumSmear_str'
      Size = 10
    end
    object LastTBVisitTBDiagnosis_dat: TDateTimeField
      FieldName = 'TBDiagnosis_dat'
    end
    object LastTBVisitTBDiagnosedMethod_str: TWideStringField
      FieldName = 'TBDiagnosedMethod_str'
    end
    object LastTBVisitTBDiagnosedMethodNotes_str: TWideStringField
      FieldName = 'TBDiagnosedMethodNotes_str'
      Size = 150
    end
    object LastTBVisitTBExpectedCompletion_dat: TDateTimeField
      FieldName = 'TBExpectedCompletion_dat'
    end
    object LastTBVisitTBCategory_str: TWideStringField
      FieldName = 'TBCategory_str'
      Size = 40
    end
    object LastTBVisitIPT_bol: TBooleanField
      FieldName = 'IPT_bol'
    end
    object LastTBVisitIPTStart_dat: TDateTimeField
      FieldName = 'IPTStart_dat'
    end
    object LastTBVisitIPTStop_dat: TDateTimeField
      FieldName = 'IPTStop_dat'
    end
    object LastTBVisitTBStatus_str: TWideStringField
      FieldName = 'TBStatus_str'
      Size = 30
    end
    object LastTBVisitTBOutcome_str: TWideStringField
      FieldName = 'TBOutcome_str'
      Size = 30
    end
    object LastTBVisitTBOutcome_dat: TDateTimeField
      FieldName = 'TBOutcome_dat'
    end
    object LastTBVisitvstPropo_TBTreatment_Start_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Start_dat'
    end
    object LastTBVisitvstPropo_TBTreatment_Stopped_dat: TDateTimeField
      FieldName = 'vstPropo_TBTreatment_Stopped_dat'
    end
    object LastTBVisitTBReasonStoppingTBTreatment_str: TWideStringField
      FieldName = 'TBReasonStoppingTBTreatment_str'
      Size = 30
    end
    object LastTBVisitTBRegimen_str: TWideStringField
      FieldName = 'TBRegimen_str'
      Size = 30
    end
    object LastTBVisitTBRegimenChangeTo_str: TWideStringField
      FieldName = 'TBRegimenChangeTo_str'
      Size = 30
    end
    object LastTBVisitTBRegimenChangeReason_str: TWideStringField
      FieldName = 'TBRegimenChangeReason_str'
      Size = 30
    end
    object LastTBVisitTBScreened_bol: TBooleanField
      FieldName = 'TBScreened_bol'
    end
    object LastTBVisitTBScreenResult_str: TWideStringField
      FieldName = 'TBScreenResult_str'
      Size = 30
    end
    object LastTBVisitTBScheduled_dat: TDateTimeField
      FieldName = 'TBScheduled_dat'
    end
    object LastTBVisitTBScheduledVisitType_str: TWideStringField
      FieldName = 'TBScheduledVisitType_str'
    end
    object LastTBVisitTBNextVisit_dat: TDateTimeField
      FieldName = 'TBNextVisit_dat'
    end
    object LastTBVisitTBNextVisitType_str: TWideStringField
      FieldName = 'TBNextVisitType_str'
      Size = 40
    end
    object LastTBVisitTBReTreatmentType_str: TWideStringField
      FieldName = 'TBReTreatmentType_str'
      Size = 40
    end
    object LastTBVisitTBDuration_int: TIntegerField
      FieldName = 'TBDuration_int'
    end
    object LastTBVisitTBContinuationPhase_dat: TDateTimeField
      FieldName = 'TBContinuationPhase_dat'
    end
    object LastTBVisitvstPartumProphylaxis_str: TWideStringField
      FieldName = 'vstPartumProphylaxis_str'
      Size = 15
    end
  end
  object dsTBProtocols: TDataSource
    DataSet = tblTBProtocols
    Left = 976
    Top = 456
  end
  object tblTBProtocols: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Groupcode_Str, Name_Str '
      'FROM TblStdProtocol'
      'WHERE GroupCode_Str LIKE '#39'%TB%'#39
      'GROUP BY GroupCode_Str, Name_Str'
      'ORDER BY Groupcode_Str, Name_Str')
    Left = 896
    Top = 456
    object WideStringField75: TWideStringField
      FieldName = 'Name_Str'
      Size = 250
    end
    object WideStringField76: TWideStringField
      FieldName = 'GroupCode_Str'
    end
  end
  object dstblNationality: TDataSource
    DataSet = tblNationality
    Left = 968
    Top = 752
  end
  object tblNationality: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tlkNationality'
      'ORDER By Nationality_str ')
    Left = 896
    Top = 752
    object tblNationalityNationality_ID: TAutoIncField
      FieldName = 'Nationality_ID'
      ReadOnly = True
    end
    object tblNationalityNationality_str: TWideStringField
      FieldName = 'Nationality_str'
      Size = 50
    end
  end
  object qryVisitNotesHistory: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    BeforeEdit = TblClinicalVisitBeforeEdit
    BeforePost = TblClinicalVisitBeforePost
    AfterPost = TblClinicalVisitAfterPost
    OnNewRecord = TblClinicalVisitNewRecord
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = '{392E511A-6DA9-41A8-8602-D5A52364533B}'
      end>
    Prepared = True
    SQL.Strings = (
      
        'SELECT TblVisit.Visit_ID, TblVisit.patient_ID, TblVisit.notes_me' +
        'm,  TblVisit.vstVisitDate_dat, TblVisit.visitType_str, tblVisit.' +
        'vstFunctionalStatus_str, TblVisit.vstClinicalStage_str, TblVisit' +
        '.vstRegimenChange_From_str'
      
        'FROM TblVisit INNER JOIN tblPerson ON tblPerson.person_ID = tblV' +
        'isit.patient_ID'
      'WHERE TblVisit.patient_ID=:person_id'
      'AND TblVisit.notes_mem IS NOT NULL'
      'ORDER BY TblVisit.vstVisitDate_dat DESC')
    Left = 896
    Top = 520
  end
  object dsVisitNotesHistory: TDataSource
    DataSet = qryVisitNotesHistory
    Left = 1008
    Top = 520
  end
  object qryPatientHandOverNotes: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    BeforePost = qryPatientHandOversBeforePost
    OnNewRecord = qryPatientHandOversNewRecord
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  tblVisitHandOvers.*, tblPerson.personDescription_str, tb' +
        'lPerson.personRefNoCurrent_str, tblPerson.personPAS_str, tblPers' +
        'on.Classification_str'
      
        'FROM tblVisitHandOvers INNER JOIN tblPerson ON tblPerson.person_' +
        'ID = tblVisitHandOvers.patient_ID'
      'WHERE tblVisitHandOvers.patient_ID=:person_ID'
      'AND tblVisitHandOvers.handOverTime_date >= (GETDATE() -93)')
    Left = 280
    Top = 856
    object AutoIncField1: TAutoIncField
      FieldName = 'handover_id'
      ReadOnly = True
    end
    object DateTimeField96: TDateTimeField
      FieldName = 'handOverTime_date'
    end
    object GuidField16: TGuidField
      FieldName = 'patient_id'
      FixedChar = True
      Size = 38
    end
    object WideStringField68: TWideStringField
      FieldName = 'machineName_str'
    end
    object WideStringField77: TWideStringField
      FieldName = 'handOverToType_str'
    end
    object WideStringField79: TWideStringField
      FieldName = 'handedOverToName_str'
    end
    object GuidField17: TGuidField
      FieldName = 'handedOverToUser_ID'
      FixedChar = True
      Size = 38
    end
    object GuidField18: TGuidField
      FieldName = 'user_id'
      FixedChar = True
      Size = 38
    end
    object WideStringField80: TWideStringField
      FieldName = 'handOverByType_str'
    end
    object MemoField6: TMemoField
      FieldName = 'handOverNotes_str'
      BlobType = ftMemo
    end
    object qryPatientHandOverNotespersonDescription_str: TWideStringField
      FieldName = 'personDescription_str'
      Size = 150
    end
    object qryPatientHandOverNotespersonRefNoCurrent_str: TWideStringField
      FieldName = 'personRefNoCurrent_str'
    end
    object qryPatientHandOverNotespersonPAS_str: TWideStringField
      FieldName = 'personPAS_str'
    end
    object qryPatientHandOverNotesClassification_str: TWideStringField
      FieldName = 'Classification_str'
    end
  end
  object dsPatientHandOverNotes: TDataSource
    DataSet = qryPatientHandOverNotes
    Left = 424
    Top = 856
  end
  object ppDBPipelineHandOverNotes: TppDBPipeline
    DataSource = dsPatientHandOverNotes
    UserName = 'DBPipelineHandOverNotes'
    Left = 568
    Top = 856
  end
  object ppHandOverNotesHistory: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineHandOverNotes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 712
    Top = 856
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineHandOverNotes'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 26458
      mmPrintPosition = 0
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDescription_str'
        DataPipeline = ppDBPipelineHandOverNotes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Name = 'ARIAL'
        Font.Size = 16
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineHandOverNotes'
        mmHeight = 6615
        mmLeft = 2117
        mmTop = 6350
        mmWidth = 60325
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clTeal
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 529
        mmLeft = 0
        mmTop = 24871
        mmWidth = 283105
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 112184
        mmTop = 20638
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Handover Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 20638
        mmWidth = 35190
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Handed over to'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 48948
        mmTop = 20638
        mmWidth = 35719
        BandType = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipelineHandOverNotes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Name = 'ARIAL'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipelineHandOverNotes'
        mmHeight = 5821
        mmLeft = 2117
        mmTop = 0
        mmWidth = 58738
        BandType = 0
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personPAS_str'
        DataPipeline = ppDBPipelineHandOverNotes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Name = 'ARIAL'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipelineHandOverNotes'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 13494
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 22754
      mmPrintPosition = 0
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'handOverByType_str'
        DataPipeline = ppDBPipelineHandOverNotes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelineHandOverNotes'
        mmHeight = 4763
        mmLeft = 112184
        mmTop = 529
        mmWidth = 38100
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'handOverTime_date'
        DataPipeline = ppDBPipelineHandOverNotes
        DisplayFormat = ' h:nn:ss dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelineHandOverNotes'
        mmHeight = 4763
        mmLeft = 10848
        mmTop = 529
        mmWidth = 35190
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'handOverToType_str'
        DataPipeline = ppDBPipelineHandOverNotes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelineHandOverNotes'
        mmHeight = 4064
        mmLeft = 48948
        mmTop = 529
        mmWidth = 33422
        BandType = 4
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'handover_id'
        DataPipeline = ppDBPipelineTodaysHandovers
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipelineTodaysHandovers'
        mmHeight = 4233
        mmLeft = 529
        mmTop = 529
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 6350
        mmWidth = 11113
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'handOverNotes_str'
        DataPipeline = ppDBPipelineHandOverNotes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipelineHandOverNotes'
        mmHeight = 15875
        mmLeft = 11642
        mmTop = 6350
        mmWidth = 254794
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clTeal
        Pen.Width = 5
        Weight = 3.75
        mmHeight = 3969
        mmLeft = 0
        mmTop = 5027
        mmWidth = 283105
        BandType = 8
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3662
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 34692
        BandType = 8
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3662
        mmLeft = 193411
        mmTop = 1323
        mmWidth = 10033
        BandType = 8
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object qryNumberOfVisitsforDate: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT Count(*) AS NumberOfPatients'
      'FROM tblVisit'
      'WHERE tblVisit.vstNextVisit_dat =:DDate')
    Left = 896
    Top = 824
    object qryNumberOfVisitsforDateNumberOfPatients: TIntegerField
      FieldName = 'NumberOfPatients'
      ReadOnly = True
    end
  end
  object tlkFoodSources: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM tlkFoodSources'
      'ORDER BY foodsource_str')
    Left = 888
    Top = 152
  end
  object dsFoodSources: TDataSource
    DataSet = tlkFoodSources
    Left = 992
    Top = 160
  end
  object tblPRescrioptions: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblPRescription'
      'WHERE patient_ID=:person_ID'
      'ORDER BY Date_dat')
    Left = 888
    Top = 328
  end
  object dsPrescriptions: TDataSource
    DataSet = tblPRescrioptions
    Left = 1000
    Top = 328
  end
  object qryIsWeightInForToday: TADOQuery
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    DataSource = dsPatient
    Parameters = <
      item
        Name = 'person_id'
        DataType = ftGuid
        Size = 38
        Value = '{332EBD5D-2FD1-4C00-A885-94733EC0BCD4}'
      end
      item
        Name = 'WeightDate'
        Size = -1
        Value = Null
      end
      item
        Name = 'personWeight_ID'
        Size = -1
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'IF EXISTS ('
      'SELECT personWeight_ID FROM tblPersonWeight'
      'WHERE person_ID=:person_id'
      'AND DATEDiff(d, personWeightDateRecorded_Dat, :WeightDate) = 0'
      'AND (personWeight_ID <>:personWeight_ID )'
      ')'
      'SELECT 1 AS Result'
      'ELSE '
      'SELECT 0 AS Result')
    Left = 1008
    Top = 584
  end
  object dsBookings: TDataSource
    DataSet = qryBookings
    Left = 1048
    Top = 72
  end
  object qryBookings: TADOStoredProc
    Connection = MainDm.PatientMainConnection
    CursorType = ctStatic
    ProcedureName = 'getBookings;1'
    Parameters = <
      item
        Name = '@bookingDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@filterRange'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 952
    Top = 80
    object qryBookingspersonPAS_str: TWideStringField
      FieldName = 'personPAS_str'
    end
    object qryBookingspersonRefNoCurrent_str: TWideStringField
      FieldName = 'personRefNoCurrent_str'
    end
    object qryBookingspersonLastname_str: TWideStringField
      FieldName = 'personLastname_str'
      Size = 30
    end
    object qryBookingspersonFirstname_str: TWideStringField
      FieldName = 'personFirstname_str'
      Size = 30
    end
    object qryBookingspersonDOB_dat: TDateTimeField
      FieldName = 'personDOB_dat'
    end
    object qryBookingspersonActive_bol: TBooleanField
      FieldName = 'personActive_bol'
    end
    object qryBookingspersonIDNumber_str: TWideStringField
      FieldName = 'personIDNumber_str'
    end
    object qryBookingsVisit_ID: TGuidField
      FieldName = 'Visit_ID'
      FixedChar = True
      Size = 38
    end
    object qryBookingskept_bol: TIntegerField
      FieldName = 'kept_bol'
    end
    object qryBookingsvstNextVisit_dat: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object qryBookingsvstNextVisitType_str: TWideStringField
      FieldName = 'vstNextVisitType_str'
      Size = 40
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($LocalAppData)\RBuilder\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 1048
    Top = 24
  end
end