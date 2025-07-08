@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'File Uploader Child'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZLAW_I_Child_FU
  as select from zlaw_excel_data
  association to parent ZLAW_I_Parent_FU as _File on $projection.end_user = _File.end_user
{
  key end_user      as EndUser,
  key entrysheet    as Entrysheet,
  key ebeln         as Ebeln,
  key ebelp         as Ebelp,
      ext_number    as ExtNumber,
      begdate       as Begdate,
      enddate       as Enddate,
      quantity      as Quantity,
      base_uom      as BaseUom,
      fin_entry     as FinEntry,
      error         as Error,
      error_message as ErrorMessage,

      _File
}
