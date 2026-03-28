using {ECPersonalInformation as external} from './external/ECPersonalInformation.csn';

service ProxyService {
  entity PerPersonal as projection on external.PerPersonal {
    personIdExternal,startDate,attachmentId,createdBy,createdDateTime,createdOn,endDate,firstName,gender,lastModifiedBy,lastModifiedDateTime,lastModifiedOn,lastName,maritalStatus,middleName,nationality,nativePreferredLang,preferredName,salutation
  }

  entity PerEmergencyContacts as projection on external.PerEmergencyContacts {
    name,personIdExternal,relationship,createdBy,createdDateTime,createdOn,email,lastModifiedBy,lastModifiedDateTime,lastModifiedOn,phone,primaryFlag,secondPhone
  }
}
