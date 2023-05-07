select distinct pnrasrec.value:associationType::string as associatedRecords_associationType
      ,pnrasrec.value:bookingIdentifier::string as associatedRecords_bookingIdentifier
      ,pnrasrec.value:creation.pointOfSale.office.systemCode::string as associatedRecords_systemcode
      ,processedpnr:bookingIdentifier::string as bookingidentifier
      ,processedpnr:creation.comment::string  as creation_comment
      ,processedpnr:creation.dateTime::string as creation_datetime
      ,processedpnr:creation.pointOfSale.login.cityCode::string as creation_pos_citycode
      ,processedpnr:creation.pointOfSale.login.countryCode::string creation_pos_countrycode
      ,processedpnr:creation.pointOfSale.login.initials::string as creation_pos_initials
      ,processedpnr:creation.pointOfSale.login.numericSign::int as creation_pos_numericsign
      ,processedpnr:creation.pointOfSale.office.agentType::string as creation_offc_agentType
      ,processedpnr:creation.pointOfSale.office.iataNumber::string as creation_offc_iataNumber
      ,processedpnr:creation.pointOfSale.office.id::string as creation_offc_id
      ,processedpnr:creation.pointOfSale.office.systemCode::string as creation_offc_systemCode
      ,processedpnr:id::string as id
      ,keywrd.value:id::string as keyword_id
      ,keywrd.value:serviceProvider.code::string as keyword_srv_prvd_code
      ,keywrd.value:subType::string as keyword_subtype
      ,keywrd.value:text::string as keyword_text
      ,trvlcoll.value:id::string as keyword_trvl_coll_id
      ,trvlcoll.value:ref::string as keyword_trvl_coll_ref
      ,trvlcoll.value:type::string as keyword_trvl_coll_type
      ,keywrd.value:type::string as keyword_type 
      ,processedpnr:lastModification.comment::string  as lastmod_comment
      ,processedpnr:lastModification.dateTime::string as lastmod_datetime
      ,processedpnr:lastModification.pointOfSale.login.cityCode::string as lastmod_pos_citycode
      ,processedpnr:lastModification.pointOfSale.login.countryCode::string lastmod_pos_countrycode
      ,processedpnr:lastModification.pointOfSale.login.initials::string as lastmod_pos_initials
      ,processedpnr:lastModification.pointOfSale.login.numericSign::int as lastmod_pos_numericsign
      ,processedpnr:lastModification.pointOfSale.office.agentType::string as lastmod_offc_agentType
      ,processedpnr:lastModification.pointOfSale.office.iataNumber::string as lastmod_offc_iataNumber
      ,processedpnr:lastModification.pointOfSale.office.id::string as lastmod_offc_id
      ,processedpnr:lastModification.pointOfSale.office.systemCode::string as lastmod_offc_systemCode
      ,processedpnr:nip::string as nip
      ,processedpnr:owner.login.cityCode::string as  onwer_login_ctycode
      ,processedpnr:owner.login.countryCode::string as  onwer_login_cntcode
      ,processedpnr:owner.login.dutyCode::string as  onwer_login_dutycode
      ,processedpnr:owner.login.initials::string as  onwer_login_initials
      ,processedpnr:owner.office.agentType::string as  onwer_offc_agentType
      ,processedpnr:owner.office.iataNumber::string as  onwer_offc_iatanumber
      ,processedpnr:owner.office.id::string as  onwer_offc_id
      ,processedpnr:owner.office.systemCode::string as  onwer_offc_systemcode
      ,pnrprop.value::string as pnrproperties --43
      ,prd.value:airSegment.aircraft.code::string as airseg_aircraft_code
      ,prd.value:airSegment.arrival.iataCode::string as airseg_arrv_iatacode
      ,prd.value:airSegment.arrival.localDateTime::string as airseg_arrv_localdatetime
      ,prd.value:airSegment.bookingDateTime::string as airseg_bookingDateTime
      ,prd.value:airSegment.cabin::string as airseg_cabin
      ,prd.value:airSegment.carrierCode::string as airseg_carrierCode
      ,prd.value:airSegment.class::string as airseg_class
      ,prd.value:airSegment.departure.iataCode::string as airseg_class
      ,prd.value:airSegment.departure.localDateTime::string as airseg_class
      ,prd.value:airSegment.isInformational::string as airseg_isinf
      ,prd.value:airSegment.isOpenNumber::string as airseg_isopennum
      ,prd.value:airSegment.number::string as airseg_number
      ,prd.value:airSegment.operating.carrierCode::string as airseg_opr_crrcode
      ,prd.value:airSegment.operating.class::string as airseg_opr_class
      ,prd.value:airSegment.operating.codeshareAgreement::string as airseg_opr_cdshragrmt
      ,prd.value:airSegment.operating.number::string as airseg_opr_num
      ,prd.value:airSegment.status::string as airseg_status
      ,prd.value:id::string as prd_id --61
      ,prd_prd.value:id::string as prd_prd_id
      ,prd_prd.value:ref::string as prd_prd_ref
      ,prd_prd.value:type::string as prd_prd_type
      ,prd.value:service.code::string as prd_srv_code
      ,prd.value:service.serviceProvider.code::string as prd_srv_srv_prov_code
      ,prd.value:service.subType::string as prd_srv_subtype
      ,prd.value:service.text::string as prd_srv_text
      ,prd.value:subType::string as prd_subtype
      ,prd_trvlscoll.value:id::string prd_trvls_id
      ,prd_trvlscoll.value:ref::string prd_trvls_ref
      ,prd_trvlscoll.value:type::string prd_trvls_type
      ,prd.value:type::string as prd_type  
      ,processedpnr:queuingOffice.id::string as queuingoffc_id
      ,trvls.value:gender::string tvls_gender
      ,trvls.value:id::string tvls_id
      ,nm.value:firstName::string tvls_nm_firstnm
      ,nm.value:lastName::string tvls_nm_lastnm
      ,trvls.value:sourceId::string tvls_sourceid
      ,trvls.value:type::string tvls_type   
      ,processedpnr:type::string as type
      ,processedpnr:version::string as version
from "IBM_REH"."PNR_STG"."STG_PNR_DATA" 
     ,lateral flatten(input => processedpnr:associatedRecords) pnrasrec
     ,lateral flatten(input => processedpnr:keywords) keywrd
     ,lateral flatten(input => keywrd.value:travelers.collection) trvlcoll
     ,lateral flatten(input => processedpnr:pnrProperties) pnrprop
     ,lateral flatten(input => processedpnr:travelers) trvls
     ,lateral flatten(input => trvls.value:names) nm
     ,lateral flatten(input => processedpnr:products) prd
     ,lateral flatten(input => prd.value:products.collection) prd_prd
     ,lateral flatten(input => prd.value:travelers.collection) prd_trvlscoll
where pnrid like 'QAVQHL%'
and pnrversion = 0
order by 61