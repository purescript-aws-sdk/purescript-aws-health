
module AWS.Health.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Information about an entity that is affected by a Health event.</p>
newtype AffectedEntity = AffectedEntity 
  { "entityArn" :: NullOrUndefined (EntityArn')
  , "eventArn" :: NullOrUndefined (EventArn')
  , "entityValue" :: NullOrUndefined (EntityValue')
  , "awsAccountId" :: NullOrUndefined (AccountId')
  , "lastUpdatedTime" :: NullOrUndefined (Types.Timestamp)
  , "statusCode" :: NullOrUndefined (EntityStatusCode')
  , "tags" :: NullOrUndefined (TagSet')
  }
derive instance newtypeAffectedEntity :: Newtype AffectedEntity _
derive instance repGenericAffectedEntity :: Generic AffectedEntity _
instance showAffectedEntity :: Show AffectedEntity where show = genericShow
instance decodeAffectedEntity :: Decode AffectedEntity where decode = genericDecode options
instance encodeAffectedEntity :: Encode AffectedEntity where encode = genericEncode options

-- | Constructs AffectedEntity from required parameters
newAffectedEntity :: AffectedEntity
newAffectedEntity  = AffectedEntity { "awsAccountId": (NullOrUndefined Nothing), "entityArn": (NullOrUndefined Nothing), "entityValue": (NullOrUndefined Nothing), "eventArn": (NullOrUndefined Nothing), "lastUpdatedTime": (NullOrUndefined Nothing), "statusCode": (NullOrUndefined Nothing), "tags": (NullOrUndefined Nothing) }

-- | Constructs AffectedEntity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAffectedEntity' :: ( { "entityArn" :: NullOrUndefined (EntityArn') , "eventArn" :: NullOrUndefined (EventArn') , "entityValue" :: NullOrUndefined (EntityValue') , "awsAccountId" :: NullOrUndefined (AccountId') , "lastUpdatedTime" :: NullOrUndefined (Types.Timestamp) , "statusCode" :: NullOrUndefined (EntityStatusCode') , "tags" :: NullOrUndefined (TagSet') } -> {"entityArn" :: NullOrUndefined (EntityArn') , "eventArn" :: NullOrUndefined (EventArn') , "entityValue" :: NullOrUndefined (EntityValue') , "awsAccountId" :: NullOrUndefined (AccountId') , "lastUpdatedTime" :: NullOrUndefined (Types.Timestamp) , "statusCode" :: NullOrUndefined (EntityStatusCode') , "tags" :: NullOrUndefined (TagSet') } ) -> AffectedEntity
newAffectedEntity'  customize = (AffectedEntity <<< customize) { "awsAccountId": (NullOrUndefined Nothing), "entityArn": (NullOrUndefined Nothing), "entityValue": (NullOrUndefined Nothing), "eventArn": (NullOrUndefined Nothing), "lastUpdatedTime": (NullOrUndefined Nothing), "statusCode": (NullOrUndefined Nothing), "tags": (NullOrUndefined Nothing) }



-- | <p>A range of dates and times that is used by the <a>EventFilter</a> and <a>EntityFilter</a> objects. If <code>from</code> is set and <code>to</code> is set: match items where the timestamp (<code>startTime</code>, <code>endTime</code>, or <code>lastUpdatedTime</code>) is between <code>from</code> and <code>to</code> inclusive. If <code>from</code> is set and <code>to</code> is not set: match items where the timestamp value is equal to or after <code>from</code>. If <code>from</code> is not set and <code>to</code> is set: match items where the timestamp value is equal to or before <code>to</code>.</p>
newtype DateTimeRange = DateTimeRange 
  { "from" :: NullOrUndefined (Types.Timestamp)
  , "to" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeDateTimeRange :: Newtype DateTimeRange _
derive instance repGenericDateTimeRange :: Generic DateTimeRange _
instance showDateTimeRange :: Show DateTimeRange where show = genericShow
instance decodeDateTimeRange :: Decode DateTimeRange where decode = genericDecode options
instance encodeDateTimeRange :: Encode DateTimeRange where encode = genericEncode options

-- | Constructs DateTimeRange from required parameters
newDateTimeRange :: DateTimeRange
newDateTimeRange  = DateTimeRange { "from": (NullOrUndefined Nothing), "to": (NullOrUndefined Nothing) }

-- | Constructs DateTimeRange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDateTimeRange' :: ( { "from" :: NullOrUndefined (Types.Timestamp) , "to" :: NullOrUndefined (Types.Timestamp) } -> {"from" :: NullOrUndefined (Types.Timestamp) , "to" :: NullOrUndefined (Types.Timestamp) } ) -> DateTimeRange
newDateTimeRange'  customize = (DateTimeRange <<< customize) { "from": (NullOrUndefined Nothing), "to": (NullOrUndefined Nothing) }



newtype DescribeAffectedEntitiesRequest = DescribeAffectedEntitiesRequest 
  { "filter" :: (EntityFilter)
  , "locale" :: NullOrUndefined (Locale')
  , "nextToken" :: NullOrUndefined (NextToken')
  , "maxResults" :: NullOrUndefined (MaxResults')
  }
derive instance newtypeDescribeAffectedEntitiesRequest :: Newtype DescribeAffectedEntitiesRequest _
derive instance repGenericDescribeAffectedEntitiesRequest :: Generic DescribeAffectedEntitiesRequest _
instance showDescribeAffectedEntitiesRequest :: Show DescribeAffectedEntitiesRequest where show = genericShow
instance decodeDescribeAffectedEntitiesRequest :: Decode DescribeAffectedEntitiesRequest where decode = genericDecode options
instance encodeDescribeAffectedEntitiesRequest :: Encode DescribeAffectedEntitiesRequest where encode = genericEncode options

-- | Constructs DescribeAffectedEntitiesRequest from required parameters
newDescribeAffectedEntitiesRequest :: EntityFilter -> DescribeAffectedEntitiesRequest
newDescribeAffectedEntitiesRequest _filter = DescribeAffectedEntitiesRequest { "filter": _filter, "locale": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeAffectedEntitiesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAffectedEntitiesRequest' :: EntityFilter -> ( { "filter" :: (EntityFilter) , "locale" :: NullOrUndefined (Locale') , "nextToken" :: NullOrUndefined (NextToken') , "maxResults" :: NullOrUndefined (MaxResults') } -> {"filter" :: (EntityFilter) , "locale" :: NullOrUndefined (Locale') , "nextToken" :: NullOrUndefined (NextToken') , "maxResults" :: NullOrUndefined (MaxResults') } ) -> DescribeAffectedEntitiesRequest
newDescribeAffectedEntitiesRequest' _filter customize = (DescribeAffectedEntitiesRequest <<< customize) { "filter": _filter, "locale": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeAffectedEntitiesResponse = DescribeAffectedEntitiesResponse 
  { "entities" :: NullOrUndefined (EntityList)
  , "nextToken" :: NullOrUndefined (NextToken')
  }
derive instance newtypeDescribeAffectedEntitiesResponse :: Newtype DescribeAffectedEntitiesResponse _
derive instance repGenericDescribeAffectedEntitiesResponse :: Generic DescribeAffectedEntitiesResponse _
instance showDescribeAffectedEntitiesResponse :: Show DescribeAffectedEntitiesResponse where show = genericShow
instance decodeDescribeAffectedEntitiesResponse :: Decode DescribeAffectedEntitiesResponse where decode = genericDecode options
instance encodeDescribeAffectedEntitiesResponse :: Encode DescribeAffectedEntitiesResponse where encode = genericEncode options

-- | Constructs DescribeAffectedEntitiesResponse from required parameters
newDescribeAffectedEntitiesResponse :: DescribeAffectedEntitiesResponse
newDescribeAffectedEntitiesResponse  = DescribeAffectedEntitiesResponse { "entities": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeAffectedEntitiesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAffectedEntitiesResponse' :: ( { "entities" :: NullOrUndefined (EntityList) , "nextToken" :: NullOrUndefined (NextToken') } -> {"entities" :: NullOrUndefined (EntityList) , "nextToken" :: NullOrUndefined (NextToken') } ) -> DescribeAffectedEntitiesResponse
newDescribeAffectedEntitiesResponse'  customize = (DescribeAffectedEntitiesResponse <<< customize) { "entities": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeEntityAggregatesRequest = DescribeEntityAggregatesRequest 
  { "eventArns" :: NullOrUndefined (EventArnsList)
  }
derive instance newtypeDescribeEntityAggregatesRequest :: Newtype DescribeEntityAggregatesRequest _
derive instance repGenericDescribeEntityAggregatesRequest :: Generic DescribeEntityAggregatesRequest _
instance showDescribeEntityAggregatesRequest :: Show DescribeEntityAggregatesRequest where show = genericShow
instance decodeDescribeEntityAggregatesRequest :: Decode DescribeEntityAggregatesRequest where decode = genericDecode options
instance encodeDescribeEntityAggregatesRequest :: Encode DescribeEntityAggregatesRequest where encode = genericEncode options

-- | Constructs DescribeEntityAggregatesRequest from required parameters
newDescribeEntityAggregatesRequest :: DescribeEntityAggregatesRequest
newDescribeEntityAggregatesRequest  = DescribeEntityAggregatesRequest { "eventArns": (NullOrUndefined Nothing) }

-- | Constructs DescribeEntityAggregatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEntityAggregatesRequest' :: ( { "eventArns" :: NullOrUndefined (EventArnsList) } -> {"eventArns" :: NullOrUndefined (EventArnsList) } ) -> DescribeEntityAggregatesRequest
newDescribeEntityAggregatesRequest'  customize = (DescribeEntityAggregatesRequest <<< customize) { "eventArns": (NullOrUndefined Nothing) }



newtype DescribeEntityAggregatesResponse = DescribeEntityAggregatesResponse 
  { "entityAggregates" :: NullOrUndefined (EntityAggregateList)
  }
derive instance newtypeDescribeEntityAggregatesResponse :: Newtype DescribeEntityAggregatesResponse _
derive instance repGenericDescribeEntityAggregatesResponse :: Generic DescribeEntityAggregatesResponse _
instance showDescribeEntityAggregatesResponse :: Show DescribeEntityAggregatesResponse where show = genericShow
instance decodeDescribeEntityAggregatesResponse :: Decode DescribeEntityAggregatesResponse where decode = genericDecode options
instance encodeDescribeEntityAggregatesResponse :: Encode DescribeEntityAggregatesResponse where encode = genericEncode options

-- | Constructs DescribeEntityAggregatesResponse from required parameters
newDescribeEntityAggregatesResponse :: DescribeEntityAggregatesResponse
newDescribeEntityAggregatesResponse  = DescribeEntityAggregatesResponse { "entityAggregates": (NullOrUndefined Nothing) }

-- | Constructs DescribeEntityAggregatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEntityAggregatesResponse' :: ( { "entityAggregates" :: NullOrUndefined (EntityAggregateList) } -> {"entityAggregates" :: NullOrUndefined (EntityAggregateList) } ) -> DescribeEntityAggregatesResponse
newDescribeEntityAggregatesResponse'  customize = (DescribeEntityAggregatesResponse <<< customize) { "entityAggregates": (NullOrUndefined Nothing) }



newtype DescribeEventAggregatesRequest = DescribeEventAggregatesRequest 
  { "filter" :: NullOrUndefined (EventFilter)
  , "aggregateField" :: (EventAggregateField')
  , "maxResults" :: NullOrUndefined (MaxResults')
  , "nextToken" :: NullOrUndefined (NextToken')
  }
derive instance newtypeDescribeEventAggregatesRequest :: Newtype DescribeEventAggregatesRequest _
derive instance repGenericDescribeEventAggregatesRequest :: Generic DescribeEventAggregatesRequest _
instance showDescribeEventAggregatesRequest :: Show DescribeEventAggregatesRequest where show = genericShow
instance decodeDescribeEventAggregatesRequest :: Decode DescribeEventAggregatesRequest where decode = genericDecode options
instance encodeDescribeEventAggregatesRequest :: Encode DescribeEventAggregatesRequest where encode = genericEncode options

-- | Constructs DescribeEventAggregatesRequest from required parameters
newDescribeEventAggregatesRequest :: EventAggregateField' -> DescribeEventAggregatesRequest
newDescribeEventAggregatesRequest _aggregateField = DescribeEventAggregatesRequest { "aggregateField": _aggregateField, "filter": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeEventAggregatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventAggregatesRequest' :: EventAggregateField' -> ( { "filter" :: NullOrUndefined (EventFilter) , "aggregateField" :: (EventAggregateField') , "maxResults" :: NullOrUndefined (MaxResults') , "nextToken" :: NullOrUndefined (NextToken') } -> {"filter" :: NullOrUndefined (EventFilter) , "aggregateField" :: (EventAggregateField') , "maxResults" :: NullOrUndefined (MaxResults') , "nextToken" :: NullOrUndefined (NextToken') } ) -> DescribeEventAggregatesRequest
newDescribeEventAggregatesRequest' _aggregateField customize = (DescribeEventAggregatesRequest <<< customize) { "aggregateField": _aggregateField, "filter": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeEventAggregatesResponse = DescribeEventAggregatesResponse 
  { "eventAggregates" :: NullOrUndefined (EventAggregateList)
  , "nextToken" :: NullOrUndefined (NextToken')
  }
derive instance newtypeDescribeEventAggregatesResponse :: Newtype DescribeEventAggregatesResponse _
derive instance repGenericDescribeEventAggregatesResponse :: Generic DescribeEventAggregatesResponse _
instance showDescribeEventAggregatesResponse :: Show DescribeEventAggregatesResponse where show = genericShow
instance decodeDescribeEventAggregatesResponse :: Decode DescribeEventAggregatesResponse where decode = genericDecode options
instance encodeDescribeEventAggregatesResponse :: Encode DescribeEventAggregatesResponse where encode = genericEncode options

-- | Constructs DescribeEventAggregatesResponse from required parameters
newDescribeEventAggregatesResponse :: DescribeEventAggregatesResponse
newDescribeEventAggregatesResponse  = DescribeEventAggregatesResponse { "eventAggregates": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeEventAggregatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventAggregatesResponse' :: ( { "eventAggregates" :: NullOrUndefined (EventAggregateList) , "nextToken" :: NullOrUndefined (NextToken') } -> {"eventAggregates" :: NullOrUndefined (EventAggregateList) , "nextToken" :: NullOrUndefined (NextToken') } ) -> DescribeEventAggregatesResponse
newDescribeEventAggregatesResponse'  customize = (DescribeEventAggregatesResponse <<< customize) { "eventAggregates": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeEventDetailsFailedSet = DescribeEventDetailsFailedSet (Array EventDetailsErrorItem)
derive instance newtypeDescribeEventDetailsFailedSet :: Newtype DescribeEventDetailsFailedSet _
derive instance repGenericDescribeEventDetailsFailedSet :: Generic DescribeEventDetailsFailedSet _
instance showDescribeEventDetailsFailedSet :: Show DescribeEventDetailsFailedSet where show = genericShow
instance decodeDescribeEventDetailsFailedSet :: Decode DescribeEventDetailsFailedSet where decode = genericDecode options
instance encodeDescribeEventDetailsFailedSet :: Encode DescribeEventDetailsFailedSet where encode = genericEncode options



newtype DescribeEventDetailsRequest = DescribeEventDetailsRequest 
  { "eventArns" :: (EventArnList')
  , "locale" :: NullOrUndefined (Locale')
  }
derive instance newtypeDescribeEventDetailsRequest :: Newtype DescribeEventDetailsRequest _
derive instance repGenericDescribeEventDetailsRequest :: Generic DescribeEventDetailsRequest _
instance showDescribeEventDetailsRequest :: Show DescribeEventDetailsRequest where show = genericShow
instance decodeDescribeEventDetailsRequest :: Decode DescribeEventDetailsRequest where decode = genericDecode options
instance encodeDescribeEventDetailsRequest :: Encode DescribeEventDetailsRequest where encode = genericEncode options

-- | Constructs DescribeEventDetailsRequest from required parameters
newDescribeEventDetailsRequest :: EventArnList' -> DescribeEventDetailsRequest
newDescribeEventDetailsRequest _eventArns = DescribeEventDetailsRequest { "eventArns": _eventArns, "locale": (NullOrUndefined Nothing) }

-- | Constructs DescribeEventDetailsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventDetailsRequest' :: EventArnList' -> ( { "eventArns" :: (EventArnList') , "locale" :: NullOrUndefined (Locale') } -> {"eventArns" :: (EventArnList') , "locale" :: NullOrUndefined (Locale') } ) -> DescribeEventDetailsRequest
newDescribeEventDetailsRequest' _eventArns customize = (DescribeEventDetailsRequest <<< customize) { "eventArns": _eventArns, "locale": (NullOrUndefined Nothing) }



newtype DescribeEventDetailsResponse = DescribeEventDetailsResponse 
  { "successfulSet" :: NullOrUndefined (DescribeEventDetailsSuccessfulSet)
  , "failedSet" :: NullOrUndefined (DescribeEventDetailsFailedSet)
  }
derive instance newtypeDescribeEventDetailsResponse :: Newtype DescribeEventDetailsResponse _
derive instance repGenericDescribeEventDetailsResponse :: Generic DescribeEventDetailsResponse _
instance showDescribeEventDetailsResponse :: Show DescribeEventDetailsResponse where show = genericShow
instance decodeDescribeEventDetailsResponse :: Decode DescribeEventDetailsResponse where decode = genericDecode options
instance encodeDescribeEventDetailsResponse :: Encode DescribeEventDetailsResponse where encode = genericEncode options

-- | Constructs DescribeEventDetailsResponse from required parameters
newDescribeEventDetailsResponse :: DescribeEventDetailsResponse
newDescribeEventDetailsResponse  = DescribeEventDetailsResponse { "failedSet": (NullOrUndefined Nothing), "successfulSet": (NullOrUndefined Nothing) }

-- | Constructs DescribeEventDetailsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventDetailsResponse' :: ( { "successfulSet" :: NullOrUndefined (DescribeEventDetailsSuccessfulSet) , "failedSet" :: NullOrUndefined (DescribeEventDetailsFailedSet) } -> {"successfulSet" :: NullOrUndefined (DescribeEventDetailsSuccessfulSet) , "failedSet" :: NullOrUndefined (DescribeEventDetailsFailedSet) } ) -> DescribeEventDetailsResponse
newDescribeEventDetailsResponse'  customize = (DescribeEventDetailsResponse <<< customize) { "failedSet": (NullOrUndefined Nothing), "successfulSet": (NullOrUndefined Nothing) }



newtype DescribeEventDetailsSuccessfulSet = DescribeEventDetailsSuccessfulSet (Array EventDetails)
derive instance newtypeDescribeEventDetailsSuccessfulSet :: Newtype DescribeEventDetailsSuccessfulSet _
derive instance repGenericDescribeEventDetailsSuccessfulSet :: Generic DescribeEventDetailsSuccessfulSet _
instance showDescribeEventDetailsSuccessfulSet :: Show DescribeEventDetailsSuccessfulSet where show = genericShow
instance decodeDescribeEventDetailsSuccessfulSet :: Decode DescribeEventDetailsSuccessfulSet where decode = genericDecode options
instance encodeDescribeEventDetailsSuccessfulSet :: Encode DescribeEventDetailsSuccessfulSet where encode = genericEncode options



newtype DescribeEventTypesRequest = DescribeEventTypesRequest 
  { "filter" :: NullOrUndefined (EventTypeFilter)
  , "locale" :: NullOrUndefined (Locale')
  , "nextToken" :: NullOrUndefined (NextToken')
  , "maxResults" :: NullOrUndefined (MaxResults')
  }
derive instance newtypeDescribeEventTypesRequest :: Newtype DescribeEventTypesRequest _
derive instance repGenericDescribeEventTypesRequest :: Generic DescribeEventTypesRequest _
instance showDescribeEventTypesRequest :: Show DescribeEventTypesRequest where show = genericShow
instance decodeDescribeEventTypesRequest :: Decode DescribeEventTypesRequest where decode = genericDecode options
instance encodeDescribeEventTypesRequest :: Encode DescribeEventTypesRequest where encode = genericEncode options

-- | Constructs DescribeEventTypesRequest from required parameters
newDescribeEventTypesRequest :: DescribeEventTypesRequest
newDescribeEventTypesRequest  = DescribeEventTypesRequest { "filter": (NullOrUndefined Nothing), "locale": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeEventTypesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventTypesRequest' :: ( { "filter" :: NullOrUndefined (EventTypeFilter) , "locale" :: NullOrUndefined (Locale') , "nextToken" :: NullOrUndefined (NextToken') , "maxResults" :: NullOrUndefined (MaxResults') } -> {"filter" :: NullOrUndefined (EventTypeFilter) , "locale" :: NullOrUndefined (Locale') , "nextToken" :: NullOrUndefined (NextToken') , "maxResults" :: NullOrUndefined (MaxResults') } ) -> DescribeEventTypesRequest
newDescribeEventTypesRequest'  customize = (DescribeEventTypesRequest <<< customize) { "filter": (NullOrUndefined Nothing), "locale": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeEventTypesResponse = DescribeEventTypesResponse 
  { "eventTypes" :: NullOrUndefined (EventTypeList)
  , "nextToken" :: NullOrUndefined (NextToken')
  }
derive instance newtypeDescribeEventTypesResponse :: Newtype DescribeEventTypesResponse _
derive instance repGenericDescribeEventTypesResponse :: Generic DescribeEventTypesResponse _
instance showDescribeEventTypesResponse :: Show DescribeEventTypesResponse where show = genericShow
instance decodeDescribeEventTypesResponse :: Decode DescribeEventTypesResponse where decode = genericDecode options
instance encodeDescribeEventTypesResponse :: Encode DescribeEventTypesResponse where encode = genericEncode options

-- | Constructs DescribeEventTypesResponse from required parameters
newDescribeEventTypesResponse :: DescribeEventTypesResponse
newDescribeEventTypesResponse  = DescribeEventTypesResponse { "eventTypes": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeEventTypesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventTypesResponse' :: ( { "eventTypes" :: NullOrUndefined (EventTypeList) , "nextToken" :: NullOrUndefined (NextToken') } -> {"eventTypes" :: NullOrUndefined (EventTypeList) , "nextToken" :: NullOrUndefined (NextToken') } ) -> DescribeEventTypesResponse
newDescribeEventTypesResponse'  customize = (DescribeEventTypesResponse <<< customize) { "eventTypes": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeEventsRequest = DescribeEventsRequest 
  { "filter" :: NullOrUndefined (EventFilter)
  , "nextToken" :: NullOrUndefined (NextToken')
  , "maxResults" :: NullOrUndefined (MaxResults')
  , "locale" :: NullOrUndefined (Locale')
  }
derive instance newtypeDescribeEventsRequest :: Newtype DescribeEventsRequest _
derive instance repGenericDescribeEventsRequest :: Generic DescribeEventsRequest _
instance showDescribeEventsRequest :: Show DescribeEventsRequest where show = genericShow
instance decodeDescribeEventsRequest :: Decode DescribeEventsRequest where decode = genericDecode options
instance encodeDescribeEventsRequest :: Encode DescribeEventsRequest where encode = genericEncode options

-- | Constructs DescribeEventsRequest from required parameters
newDescribeEventsRequest :: DescribeEventsRequest
newDescribeEventsRequest  = DescribeEventsRequest { "filter": (NullOrUndefined Nothing), "locale": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeEventsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventsRequest' :: ( { "filter" :: NullOrUndefined (EventFilter) , "nextToken" :: NullOrUndefined (NextToken') , "maxResults" :: NullOrUndefined (MaxResults') , "locale" :: NullOrUndefined (Locale') } -> {"filter" :: NullOrUndefined (EventFilter) , "nextToken" :: NullOrUndefined (NextToken') , "maxResults" :: NullOrUndefined (MaxResults') , "locale" :: NullOrUndefined (Locale') } ) -> DescribeEventsRequest
newDescribeEventsRequest'  customize = (DescribeEventsRequest <<< customize) { "filter": (NullOrUndefined Nothing), "locale": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeEventsResponse = DescribeEventsResponse 
  { "events" :: NullOrUndefined (EventList)
  , "nextToken" :: NullOrUndefined (NextToken')
  }
derive instance newtypeDescribeEventsResponse :: Newtype DescribeEventsResponse _
derive instance repGenericDescribeEventsResponse :: Generic DescribeEventsResponse _
instance showDescribeEventsResponse :: Show DescribeEventsResponse where show = genericShow
instance decodeDescribeEventsResponse :: Decode DescribeEventsResponse where decode = genericDecode options
instance encodeDescribeEventsResponse :: Encode DescribeEventsResponse where encode = genericEncode options

-- | Constructs DescribeEventsResponse from required parameters
newDescribeEventsResponse :: DescribeEventsResponse
newDescribeEventsResponse  = DescribeEventsResponse { "events": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeEventsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventsResponse' :: ( { "events" :: NullOrUndefined (EventList) , "nextToken" :: NullOrUndefined (NextToken') } -> {"events" :: NullOrUndefined (EventList) , "nextToken" :: NullOrUndefined (NextToken') } ) -> DescribeEventsResponse
newDescribeEventsResponse'  customize = (DescribeEventsResponse <<< customize) { "events": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



-- | <p>The number of entities that are affected by one or more events. Returned by the <a>DescribeEntityAggregates</a> operation.</p>
newtype EntityAggregate = EntityAggregate 
  { "eventArn" :: NullOrUndefined (EventArn')
  , "count" :: NullOrUndefined (Count')
  }
derive instance newtypeEntityAggregate :: Newtype EntityAggregate _
derive instance repGenericEntityAggregate :: Generic EntityAggregate _
instance showEntityAggregate :: Show EntityAggregate where show = genericShow
instance decodeEntityAggregate :: Decode EntityAggregate where decode = genericDecode options
instance encodeEntityAggregate :: Encode EntityAggregate where encode = genericEncode options

-- | Constructs EntityAggregate from required parameters
newEntityAggregate :: EntityAggregate
newEntityAggregate  = EntityAggregate { "count": (NullOrUndefined Nothing), "eventArn": (NullOrUndefined Nothing) }

-- | Constructs EntityAggregate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEntityAggregate' :: ( { "eventArn" :: NullOrUndefined (EventArn') , "count" :: NullOrUndefined (Count') } -> {"eventArn" :: NullOrUndefined (EventArn') , "count" :: NullOrUndefined (Count') } ) -> EntityAggregate
newEntityAggregate'  customize = (EntityAggregate <<< customize) { "count": (NullOrUndefined Nothing), "eventArn": (NullOrUndefined Nothing) }



newtype EntityAggregateList = EntityAggregateList (Array EntityAggregate)
derive instance newtypeEntityAggregateList :: Newtype EntityAggregateList _
derive instance repGenericEntityAggregateList :: Generic EntityAggregateList _
instance showEntityAggregateList :: Show EntityAggregateList where show = genericShow
instance decodeEntityAggregateList :: Decode EntityAggregateList where decode = genericDecode options
instance encodeEntityAggregateList :: Encode EntityAggregateList where encode = genericEncode options



-- | <p>The values to use to filter results from the <a>DescribeAffectedEntities</a> operation.</p>
newtype EntityFilter = EntityFilter 
  { "eventArns" :: (EventArnList')
  , "entityArns" :: NullOrUndefined (EntityArnList')
  , "entityValues" :: NullOrUndefined (EntityValueList')
  , "lastUpdatedTimes" :: NullOrUndefined (DateTimeRangeList')
  , "tags" :: NullOrUndefined (TagFilter')
  , "statusCodes" :: NullOrUndefined (EntityStatusCodeList')
  }
derive instance newtypeEntityFilter :: Newtype EntityFilter _
derive instance repGenericEntityFilter :: Generic EntityFilter _
instance showEntityFilter :: Show EntityFilter where show = genericShow
instance decodeEntityFilter :: Decode EntityFilter where decode = genericDecode options
instance encodeEntityFilter :: Encode EntityFilter where encode = genericEncode options

-- | Constructs EntityFilter from required parameters
newEntityFilter :: EventArnList' -> EntityFilter
newEntityFilter _eventArns = EntityFilter { "eventArns": _eventArns, "entityArns": (NullOrUndefined Nothing), "entityValues": (NullOrUndefined Nothing), "lastUpdatedTimes": (NullOrUndefined Nothing), "statusCodes": (NullOrUndefined Nothing), "tags": (NullOrUndefined Nothing) }

-- | Constructs EntityFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEntityFilter' :: EventArnList' -> ( { "eventArns" :: (EventArnList') , "entityArns" :: NullOrUndefined (EntityArnList') , "entityValues" :: NullOrUndefined (EntityValueList') , "lastUpdatedTimes" :: NullOrUndefined (DateTimeRangeList') , "tags" :: NullOrUndefined (TagFilter') , "statusCodes" :: NullOrUndefined (EntityStatusCodeList') } -> {"eventArns" :: (EventArnList') , "entityArns" :: NullOrUndefined (EntityArnList') , "entityValues" :: NullOrUndefined (EntityValueList') , "lastUpdatedTimes" :: NullOrUndefined (DateTimeRangeList') , "tags" :: NullOrUndefined (TagFilter') , "statusCodes" :: NullOrUndefined (EntityStatusCodeList') } ) -> EntityFilter
newEntityFilter' _eventArns customize = (EntityFilter <<< customize) { "eventArns": _eventArns, "entityArns": (NullOrUndefined Nothing), "entityValues": (NullOrUndefined Nothing), "lastUpdatedTimes": (NullOrUndefined Nothing), "statusCodes": (NullOrUndefined Nothing), "tags": (NullOrUndefined Nothing) }



newtype EntityList = EntityList (Array AffectedEntity)
derive instance newtypeEntityList :: Newtype EntityList _
derive instance repGenericEntityList :: Generic EntityList _
instance showEntityList :: Show EntityList where show = genericShow
instance decodeEntityList :: Decode EntityList where decode = genericDecode options
instance encodeEntityList :: Encode EntityList where encode = genericEncode options



-- | <p>Summary information about an event, returned by the <a>DescribeEvents</a> operation. The <a>DescribeEventDetails</a> operation also returns this information, as well as the <a>EventDescription</a> and additional event metadata.</p>
newtype Event = Event 
  { "arn" :: NullOrUndefined (EventArn')
  , "service" :: NullOrUndefined (Service')
  , "eventTypeCode" :: NullOrUndefined (EventTypeCode')
  , "eventTypeCategory" :: NullOrUndefined (EventTypeCategory')
  , "region" :: NullOrUndefined (Region')
  , "availabilityZone" :: NullOrUndefined (AvailabilityZone')
  , "startTime" :: NullOrUndefined (Types.Timestamp)
  , "endTime" :: NullOrUndefined (Types.Timestamp)
  , "lastUpdatedTime" :: NullOrUndefined (Types.Timestamp)
  , "statusCode" :: NullOrUndefined (EventStatusCode')
  }
derive instance newtypeEvent :: Newtype Event _
derive instance repGenericEvent :: Generic Event _
instance showEvent :: Show Event where show = genericShow
instance decodeEvent :: Decode Event where decode = genericDecode options
instance encodeEvent :: Encode Event where encode = genericEncode options

-- | Constructs Event from required parameters
newEvent :: Event
newEvent  = Event { "arn": (NullOrUndefined Nothing), "availabilityZone": (NullOrUndefined Nothing), "endTime": (NullOrUndefined Nothing), "eventTypeCategory": (NullOrUndefined Nothing), "eventTypeCode": (NullOrUndefined Nothing), "lastUpdatedTime": (NullOrUndefined Nothing), "region": (NullOrUndefined Nothing), "service": (NullOrUndefined Nothing), "startTime": (NullOrUndefined Nothing), "statusCode": (NullOrUndefined Nothing) }

-- | Constructs Event's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEvent' :: ( { "arn" :: NullOrUndefined (EventArn') , "service" :: NullOrUndefined (Service') , "eventTypeCode" :: NullOrUndefined (EventTypeCode') , "eventTypeCategory" :: NullOrUndefined (EventTypeCategory') , "region" :: NullOrUndefined (Region') , "availabilityZone" :: NullOrUndefined (AvailabilityZone') , "startTime" :: NullOrUndefined (Types.Timestamp) , "endTime" :: NullOrUndefined (Types.Timestamp) , "lastUpdatedTime" :: NullOrUndefined (Types.Timestamp) , "statusCode" :: NullOrUndefined (EventStatusCode') } -> {"arn" :: NullOrUndefined (EventArn') , "service" :: NullOrUndefined (Service') , "eventTypeCode" :: NullOrUndefined (EventTypeCode') , "eventTypeCategory" :: NullOrUndefined (EventTypeCategory') , "region" :: NullOrUndefined (Region') , "availabilityZone" :: NullOrUndefined (AvailabilityZone') , "startTime" :: NullOrUndefined (Types.Timestamp) , "endTime" :: NullOrUndefined (Types.Timestamp) , "lastUpdatedTime" :: NullOrUndefined (Types.Timestamp) , "statusCode" :: NullOrUndefined (EventStatusCode') } ) -> Event
newEvent'  customize = (Event <<< customize) { "arn": (NullOrUndefined Nothing), "availabilityZone": (NullOrUndefined Nothing), "endTime": (NullOrUndefined Nothing), "eventTypeCategory": (NullOrUndefined Nothing), "eventTypeCode": (NullOrUndefined Nothing), "lastUpdatedTime": (NullOrUndefined Nothing), "region": (NullOrUndefined Nothing), "service": (NullOrUndefined Nothing), "startTime": (NullOrUndefined Nothing), "statusCode": (NullOrUndefined Nothing) }



-- | <p>The number of events of each issue type. Returned by the <a>DescribeEventAggregates</a> operation.</p>
newtype EventAggregate = EventAggregate 
  { "aggregateValue" :: NullOrUndefined (AggregateValue')
  , "count" :: NullOrUndefined (Count')
  }
derive instance newtypeEventAggregate :: Newtype EventAggregate _
derive instance repGenericEventAggregate :: Generic EventAggregate _
instance showEventAggregate :: Show EventAggregate where show = genericShow
instance decodeEventAggregate :: Decode EventAggregate where decode = genericDecode options
instance encodeEventAggregate :: Encode EventAggregate where encode = genericEncode options

-- | Constructs EventAggregate from required parameters
newEventAggregate :: EventAggregate
newEventAggregate  = EventAggregate { "aggregateValue": (NullOrUndefined Nothing), "count": (NullOrUndefined Nothing) }

-- | Constructs EventAggregate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventAggregate' :: ( { "aggregateValue" :: NullOrUndefined (AggregateValue') , "count" :: NullOrUndefined (Count') } -> {"aggregateValue" :: NullOrUndefined (AggregateValue') , "count" :: NullOrUndefined (Count') } ) -> EventAggregate
newEventAggregate'  customize = (EventAggregate <<< customize) { "aggregateValue": (NullOrUndefined Nothing), "count": (NullOrUndefined Nothing) }



newtype EventAggregateList = EventAggregateList (Array EventAggregate)
derive instance newtypeEventAggregateList :: Newtype EventAggregateList _
derive instance repGenericEventAggregateList :: Generic EventAggregateList _
instance showEventAggregateList :: Show EventAggregateList where show = genericShow
instance decodeEventAggregateList :: Decode EventAggregateList where decode = genericDecode options
instance encodeEventAggregateList :: Encode EventAggregateList where encode = genericEncode options



newtype EventArnsList = EventArnsList (Array EventArn')
derive instance newtypeEventArnsList :: Newtype EventArnsList _
derive instance repGenericEventArnsList :: Generic EventArnsList _
instance showEventArnsList :: Show EventArnsList where show = genericShow
instance decodeEventArnsList :: Decode EventArnsList where decode = genericDecode options
instance encodeEventArnsList :: Encode EventArnsList where encode = genericEncode options



-- | <p>The detailed description of the event. Included in the information returned by the <a>DescribeEventDetails</a> operation.</p>
newtype EventDescription = EventDescription 
  { "latestDescription" :: NullOrUndefined (EventDescription')
  }
derive instance newtypeEventDescription :: Newtype EventDescription _
derive instance repGenericEventDescription :: Generic EventDescription _
instance showEventDescription :: Show EventDescription where show = genericShow
instance decodeEventDescription :: Decode EventDescription where decode = genericDecode options
instance encodeEventDescription :: Encode EventDescription where encode = genericEncode options

-- | Constructs EventDescription from required parameters
newEventDescription :: EventDescription
newEventDescription  = EventDescription { "latestDescription": (NullOrUndefined Nothing) }

-- | Constructs EventDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventDescription' :: ( { "latestDescription" :: NullOrUndefined (EventDescription') } -> {"latestDescription" :: NullOrUndefined (EventDescription') } ) -> EventDescription
newEventDescription'  customize = (EventDescription <<< customize) { "latestDescription": (NullOrUndefined Nothing) }



-- | <p>Detailed information about an event. A combination of an <a>Event</a> object, an <a>EventDescription</a> object, and additional metadata about the event. Returned by the <a>DescribeEventDetails</a> operation.</p>
newtype EventDetails = EventDetails 
  { "event" :: NullOrUndefined (Event)
  , "eventDescription" :: NullOrUndefined (EventDescription)
  , "eventMetadata" :: NullOrUndefined (EventMetadata')
  }
derive instance newtypeEventDetails :: Newtype EventDetails _
derive instance repGenericEventDetails :: Generic EventDetails _
instance showEventDetails :: Show EventDetails where show = genericShow
instance decodeEventDetails :: Decode EventDetails where decode = genericDecode options
instance encodeEventDetails :: Encode EventDetails where encode = genericEncode options

-- | Constructs EventDetails from required parameters
newEventDetails :: EventDetails
newEventDetails  = EventDetails { "event": (NullOrUndefined Nothing), "eventDescription": (NullOrUndefined Nothing), "eventMetadata": (NullOrUndefined Nothing) }

-- | Constructs EventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventDetails' :: ( { "event" :: NullOrUndefined (Event) , "eventDescription" :: NullOrUndefined (EventDescription) , "eventMetadata" :: NullOrUndefined (EventMetadata') } -> {"event" :: NullOrUndefined (Event) , "eventDescription" :: NullOrUndefined (EventDescription) , "eventMetadata" :: NullOrUndefined (EventMetadata') } ) -> EventDetails
newEventDetails'  customize = (EventDetails <<< customize) { "event": (NullOrUndefined Nothing), "eventDescription": (NullOrUndefined Nothing), "eventMetadata": (NullOrUndefined Nothing) }



-- | <p>Error information returned when a <a>DescribeEventDetails</a> operation cannot find a specified event.</p>
newtype EventDetailsErrorItem = EventDetailsErrorItem 
  { "eventArn" :: NullOrUndefined (EventArn')
  , "errorName" :: NullOrUndefined (String)
  , "errorMessage" :: NullOrUndefined (String)
  }
derive instance newtypeEventDetailsErrorItem :: Newtype EventDetailsErrorItem _
derive instance repGenericEventDetailsErrorItem :: Generic EventDetailsErrorItem _
instance showEventDetailsErrorItem :: Show EventDetailsErrorItem where show = genericShow
instance decodeEventDetailsErrorItem :: Decode EventDetailsErrorItem where decode = genericDecode options
instance encodeEventDetailsErrorItem :: Encode EventDetailsErrorItem where encode = genericEncode options

-- | Constructs EventDetailsErrorItem from required parameters
newEventDetailsErrorItem :: EventDetailsErrorItem
newEventDetailsErrorItem  = EventDetailsErrorItem { "errorMessage": (NullOrUndefined Nothing), "errorName": (NullOrUndefined Nothing), "eventArn": (NullOrUndefined Nothing) }

-- | Constructs EventDetailsErrorItem's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventDetailsErrorItem' :: ( { "eventArn" :: NullOrUndefined (EventArn') , "errorName" :: NullOrUndefined (String) , "errorMessage" :: NullOrUndefined (String) } -> {"eventArn" :: NullOrUndefined (EventArn') , "errorName" :: NullOrUndefined (String) , "errorMessage" :: NullOrUndefined (String) } ) -> EventDetailsErrorItem
newEventDetailsErrorItem'  customize = (EventDetailsErrorItem <<< customize) { "errorMessage": (NullOrUndefined Nothing), "errorName": (NullOrUndefined Nothing), "eventArn": (NullOrUndefined Nothing) }



-- | <p>The values to use to filter results from the <a>DescribeEvents</a> and <a>DescribeEventAggregates</a> operations.</p>
newtype EventFilter = EventFilter 
  { "eventArns" :: NullOrUndefined (EventArnList')
  , "eventTypeCodes" :: NullOrUndefined (EventTypeList')
  , "services" :: NullOrUndefined (ServiceList')
  , "regions" :: NullOrUndefined (RegionList')
  , "availabilityZones" :: NullOrUndefined (AvailabilityZones')
  , "startTimes" :: NullOrUndefined (DateTimeRangeList')
  , "endTimes" :: NullOrUndefined (DateTimeRangeList')
  , "lastUpdatedTimes" :: NullOrUndefined (DateTimeRangeList')
  , "entityArns" :: NullOrUndefined (EntityArnList')
  , "entityValues" :: NullOrUndefined (EntityValueList')
  , "eventTypeCategories" :: NullOrUndefined (EventTypeCategoryList')
  , "tags" :: NullOrUndefined (TagFilter')
  , "eventStatusCodes" :: NullOrUndefined (EventStatusCodeList')
  }
derive instance newtypeEventFilter :: Newtype EventFilter _
derive instance repGenericEventFilter :: Generic EventFilter _
instance showEventFilter :: Show EventFilter where show = genericShow
instance decodeEventFilter :: Decode EventFilter where decode = genericDecode options
instance encodeEventFilter :: Encode EventFilter where encode = genericEncode options

-- | Constructs EventFilter from required parameters
newEventFilter :: EventFilter
newEventFilter  = EventFilter { "availabilityZones": (NullOrUndefined Nothing), "endTimes": (NullOrUndefined Nothing), "entityArns": (NullOrUndefined Nothing), "entityValues": (NullOrUndefined Nothing), "eventArns": (NullOrUndefined Nothing), "eventStatusCodes": (NullOrUndefined Nothing), "eventTypeCategories": (NullOrUndefined Nothing), "eventTypeCodes": (NullOrUndefined Nothing), "lastUpdatedTimes": (NullOrUndefined Nothing), "regions": (NullOrUndefined Nothing), "services": (NullOrUndefined Nothing), "startTimes": (NullOrUndefined Nothing), "tags": (NullOrUndefined Nothing) }

-- | Constructs EventFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventFilter' :: ( { "eventArns" :: NullOrUndefined (EventArnList') , "eventTypeCodes" :: NullOrUndefined (EventTypeList') , "services" :: NullOrUndefined (ServiceList') , "regions" :: NullOrUndefined (RegionList') , "availabilityZones" :: NullOrUndefined (AvailabilityZones') , "startTimes" :: NullOrUndefined (DateTimeRangeList') , "endTimes" :: NullOrUndefined (DateTimeRangeList') , "lastUpdatedTimes" :: NullOrUndefined (DateTimeRangeList') , "entityArns" :: NullOrUndefined (EntityArnList') , "entityValues" :: NullOrUndefined (EntityValueList') , "eventTypeCategories" :: NullOrUndefined (EventTypeCategoryList') , "tags" :: NullOrUndefined (TagFilter') , "eventStatusCodes" :: NullOrUndefined (EventStatusCodeList') } -> {"eventArns" :: NullOrUndefined (EventArnList') , "eventTypeCodes" :: NullOrUndefined (EventTypeList') , "services" :: NullOrUndefined (ServiceList') , "regions" :: NullOrUndefined (RegionList') , "availabilityZones" :: NullOrUndefined (AvailabilityZones') , "startTimes" :: NullOrUndefined (DateTimeRangeList') , "endTimes" :: NullOrUndefined (DateTimeRangeList') , "lastUpdatedTimes" :: NullOrUndefined (DateTimeRangeList') , "entityArns" :: NullOrUndefined (EntityArnList') , "entityValues" :: NullOrUndefined (EntityValueList') , "eventTypeCategories" :: NullOrUndefined (EventTypeCategoryList') , "tags" :: NullOrUndefined (TagFilter') , "eventStatusCodes" :: NullOrUndefined (EventStatusCodeList') } ) -> EventFilter
newEventFilter'  customize = (EventFilter <<< customize) { "availabilityZones": (NullOrUndefined Nothing), "endTimes": (NullOrUndefined Nothing), "entityArns": (NullOrUndefined Nothing), "entityValues": (NullOrUndefined Nothing), "eventArns": (NullOrUndefined Nothing), "eventStatusCodes": (NullOrUndefined Nothing), "eventTypeCategories": (NullOrUndefined Nothing), "eventTypeCodes": (NullOrUndefined Nothing), "lastUpdatedTimes": (NullOrUndefined Nothing), "regions": (NullOrUndefined Nothing), "services": (NullOrUndefined Nothing), "startTimes": (NullOrUndefined Nothing), "tags": (NullOrUndefined Nothing) }



newtype EventList = EventList (Array Event)
derive instance newtypeEventList :: Newtype EventList _
derive instance repGenericEventList :: Generic EventList _
instance showEventList :: Show EventList where show = genericShow
instance decodeEventList :: Decode EventList where decode = genericDecode options
instance encodeEventList :: Encode EventList where encode = genericEncode options



-- | <p>Metadata about a type of event that is reported by AWS Health. Data consists of the category (for example, <code>issue</code>), the service (for example, <code>EC2</code>), and the event type code (for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>).</p>
newtype EventType = EventType 
  { "service" :: NullOrUndefined (Service')
  , "code" :: NullOrUndefined (EventTypeCode')
  , "category" :: NullOrUndefined (EventTypeCategory')
  }
derive instance newtypeEventType :: Newtype EventType _
derive instance repGenericEventType :: Generic EventType _
instance showEventType :: Show EventType where show = genericShow
instance decodeEventType :: Decode EventType where decode = genericDecode options
instance encodeEventType :: Encode EventType where encode = genericEncode options

-- | Constructs EventType from required parameters
newEventType :: EventType
newEventType  = EventType { "category": (NullOrUndefined Nothing), "code": (NullOrUndefined Nothing), "service": (NullOrUndefined Nothing) }

-- | Constructs EventType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventType' :: ( { "service" :: NullOrUndefined (Service') , "code" :: NullOrUndefined (EventTypeCode') , "category" :: NullOrUndefined (EventTypeCategory') } -> {"service" :: NullOrUndefined (Service') , "code" :: NullOrUndefined (EventTypeCode') , "category" :: NullOrUndefined (EventTypeCategory') } ) -> EventType
newEventType'  customize = (EventType <<< customize) { "category": (NullOrUndefined Nothing), "code": (NullOrUndefined Nothing), "service": (NullOrUndefined Nothing) }



newtype EventTypeCategoryList = EventTypeCategoryList (Array EventTypeCategory')
derive instance newtypeEventTypeCategoryList :: Newtype EventTypeCategoryList _
derive instance repGenericEventTypeCategoryList :: Generic EventTypeCategoryList _
instance showEventTypeCategoryList :: Show EventTypeCategoryList where show = genericShow
instance decodeEventTypeCategoryList :: Decode EventTypeCategoryList where decode = genericDecode options
instance encodeEventTypeCategoryList :: Encode EventTypeCategoryList where encode = genericEncode options



newtype EventTypeCodeList = EventTypeCodeList (Array EventTypeCode')
derive instance newtypeEventTypeCodeList :: Newtype EventTypeCodeList _
derive instance repGenericEventTypeCodeList :: Generic EventTypeCodeList _
instance showEventTypeCodeList :: Show EventTypeCodeList where show = genericShow
instance decodeEventTypeCodeList :: Decode EventTypeCodeList where decode = genericDecode options
instance encodeEventTypeCodeList :: Encode EventTypeCodeList where encode = genericEncode options



-- | <p>The values to use to filter results from the <a>DescribeEventTypes</a> operation.</p>
newtype EventTypeFilter = EventTypeFilter 
  { "eventTypeCodes" :: NullOrUndefined (EventTypeCodeList)
  , "services" :: NullOrUndefined (ServiceList')
  , "eventTypeCategories" :: NullOrUndefined (EventTypeCategoryList)
  }
derive instance newtypeEventTypeFilter :: Newtype EventTypeFilter _
derive instance repGenericEventTypeFilter :: Generic EventTypeFilter _
instance showEventTypeFilter :: Show EventTypeFilter where show = genericShow
instance decodeEventTypeFilter :: Decode EventTypeFilter where decode = genericDecode options
instance encodeEventTypeFilter :: Encode EventTypeFilter where encode = genericEncode options

-- | Constructs EventTypeFilter from required parameters
newEventTypeFilter :: EventTypeFilter
newEventTypeFilter  = EventTypeFilter { "eventTypeCategories": (NullOrUndefined Nothing), "eventTypeCodes": (NullOrUndefined Nothing), "services": (NullOrUndefined Nothing) }

-- | Constructs EventTypeFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventTypeFilter' :: ( { "eventTypeCodes" :: NullOrUndefined (EventTypeCodeList) , "services" :: NullOrUndefined (ServiceList') , "eventTypeCategories" :: NullOrUndefined (EventTypeCategoryList) } -> {"eventTypeCodes" :: NullOrUndefined (EventTypeCodeList) , "services" :: NullOrUndefined (ServiceList') , "eventTypeCategories" :: NullOrUndefined (EventTypeCategoryList) } ) -> EventTypeFilter
newEventTypeFilter'  customize = (EventTypeFilter <<< customize) { "eventTypeCategories": (NullOrUndefined Nothing), "eventTypeCodes": (NullOrUndefined Nothing), "services": (NullOrUndefined Nothing) }



newtype EventTypeList = EventTypeList (Array EventType)
derive instance newtypeEventTypeList :: Newtype EventTypeList _
derive instance repGenericEventTypeList :: Generic EventTypeList _
instance showEventTypeList :: Show EventTypeList where show = genericShow
instance decodeEventTypeList :: Decode EventTypeList where decode = genericDecode options
instance encodeEventTypeList :: Encode EventTypeList where encode = genericEncode options



-- | <p>The specified pagination token (<code>nextToken</code>) is not valid.</p>
newtype InvalidPaginationToken = InvalidPaginationToken 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidPaginationToken :: Newtype InvalidPaginationToken _
derive instance repGenericInvalidPaginationToken :: Generic InvalidPaginationToken _
instance showInvalidPaginationToken :: Show InvalidPaginationToken where show = genericShow
instance decodeInvalidPaginationToken :: Decode InvalidPaginationToken where decode = genericDecode options
instance encodeInvalidPaginationToken :: Encode InvalidPaginationToken where encode = genericEncode options

-- | Constructs InvalidPaginationToken from required parameters
newInvalidPaginationToken :: InvalidPaginationToken
newInvalidPaginationToken  = InvalidPaginationToken { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidPaginationToken's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidPaginationToken' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> InvalidPaginationToken
newInvalidPaginationToken'  customize = (InvalidPaginationToken <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The specified locale is not supported.</p>
newtype UnsupportedLocale = UnsupportedLocale 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeUnsupportedLocale :: Newtype UnsupportedLocale _
derive instance repGenericUnsupportedLocale :: Generic UnsupportedLocale _
instance showUnsupportedLocale :: Show UnsupportedLocale where show = genericShow
instance decodeUnsupportedLocale :: Decode UnsupportedLocale where decode = genericDecode options
instance encodeUnsupportedLocale :: Encode UnsupportedLocale where encode = genericEncode options

-- | Constructs UnsupportedLocale from required parameters
newUnsupportedLocale :: UnsupportedLocale
newUnsupportedLocale  = UnsupportedLocale { "message": (NullOrUndefined Nothing) }

-- | Constructs UnsupportedLocale's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedLocale' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> UnsupportedLocale
newUnsupportedLocale'  customize = (UnsupportedLocale <<< customize) { "message": (NullOrUndefined Nothing) }



newtype AccountId' = AccountId' String
derive instance newtypeAccountId' :: Newtype AccountId' _
derive instance repGenericAccountId' :: Generic AccountId' _
instance showAccountId' :: Show AccountId' where show = genericShow
instance decodeAccountId' :: Decode AccountId' where decode = genericDecode options
instance encodeAccountId' :: Encode AccountId' where encode = genericEncode options



newtype AggregateValue' = AggregateValue' String
derive instance newtypeAggregateValue' :: Newtype AggregateValue' _
derive instance repGenericAggregateValue' :: Generic AggregateValue' _
instance showAggregateValue' :: Show AggregateValue' where show = genericShow
instance decodeAggregateValue' :: Decode AggregateValue' where decode = genericDecode options
instance encodeAggregateValue' :: Encode AggregateValue' where encode = genericEncode options



newtype AvailabilityZone' = AvailabilityZone' String
derive instance newtypeAvailabilityZone' :: Newtype AvailabilityZone' _
derive instance repGenericAvailabilityZone' :: Generic AvailabilityZone' _
instance showAvailabilityZone' :: Show AvailabilityZone' where show = genericShow
instance decodeAvailabilityZone' :: Decode AvailabilityZone' where decode = genericDecode options
instance encodeAvailabilityZone' :: Encode AvailabilityZone' where encode = genericEncode options



newtype AvailabilityZones' = AvailabilityZones' (Array AvailabilityZone')
derive instance newtypeAvailabilityZones' :: Newtype AvailabilityZones' _
derive instance repGenericAvailabilityZones' :: Generic AvailabilityZones' _
instance showAvailabilityZones' :: Show AvailabilityZones' where show = genericShow
instance decodeAvailabilityZones' :: Decode AvailabilityZones' where decode = genericDecode options
instance encodeAvailabilityZones' :: Encode AvailabilityZones' where encode = genericEncode options



newtype Count' = Count' Int
derive instance newtypeCount' :: Newtype Count' _
derive instance repGenericCount' :: Generic Count' _
instance showCount' :: Show Count' where show = genericShow
instance decodeCount' :: Decode Count' where decode = genericDecode options
instance encodeCount' :: Encode Count' where encode = genericEncode options



newtype DateTimeRangeList' = DateTimeRangeList' (Array DateTimeRange)
derive instance newtypeDateTimeRangeList' :: Newtype DateTimeRangeList' _
derive instance repGenericDateTimeRangeList' :: Generic DateTimeRangeList' _
instance showDateTimeRangeList' :: Show DateTimeRangeList' where show = genericShow
instance decodeDateTimeRangeList' :: Decode DateTimeRangeList' where decode = genericDecode options
instance encodeDateTimeRangeList' :: Encode DateTimeRangeList' where encode = genericEncode options



newtype EntityArn' = EntityArn' String
derive instance newtypeEntityArn' :: Newtype EntityArn' _
derive instance repGenericEntityArn' :: Generic EntityArn' _
instance showEntityArn' :: Show EntityArn' where show = genericShow
instance decodeEntityArn' :: Decode EntityArn' where decode = genericDecode options
instance encodeEntityArn' :: Encode EntityArn' where encode = genericEncode options



newtype EntityArnList' = EntityArnList' (Array EntityArn')
derive instance newtypeEntityArnList' :: Newtype EntityArnList' _
derive instance repGenericEntityArnList' :: Generic EntityArnList' _
instance showEntityArnList' :: Show EntityArnList' where show = genericShow
instance decodeEntityArnList' :: Decode EntityArnList' where decode = genericDecode options
instance encodeEntityArnList' :: Encode EntityArnList' where encode = genericEncode options



newtype EntityStatusCode' = EntityStatusCode' String
derive instance newtypeEntityStatusCode' :: Newtype EntityStatusCode' _
derive instance repGenericEntityStatusCode' :: Generic EntityStatusCode' _
instance showEntityStatusCode' :: Show EntityStatusCode' where show = genericShow
instance decodeEntityStatusCode' :: Decode EntityStatusCode' where decode = genericDecode options
instance encodeEntityStatusCode' :: Encode EntityStatusCode' where encode = genericEncode options



newtype EntityStatusCodeList' = EntityStatusCodeList' (Array EntityStatusCode')
derive instance newtypeEntityStatusCodeList' :: Newtype EntityStatusCodeList' _
derive instance repGenericEntityStatusCodeList' :: Generic EntityStatusCodeList' _
instance showEntityStatusCodeList' :: Show EntityStatusCodeList' where show = genericShow
instance decodeEntityStatusCodeList' :: Decode EntityStatusCodeList' where decode = genericDecode options
instance encodeEntityStatusCodeList' :: Encode EntityStatusCodeList' where encode = genericEncode options



newtype EntityValue' = EntityValue' String
derive instance newtypeEntityValue' :: Newtype EntityValue' _
derive instance repGenericEntityValue' :: Generic EntityValue' _
instance showEntityValue' :: Show EntityValue' where show = genericShow
instance decodeEntityValue' :: Decode EntityValue' where decode = genericDecode options
instance encodeEntityValue' :: Encode EntityValue' where encode = genericEncode options



newtype EntityValueList' = EntityValueList' (Array EntityValue')
derive instance newtypeEntityValueList' :: Newtype EntityValueList' _
derive instance repGenericEntityValueList' :: Generic EntityValueList' _
instance showEntityValueList' :: Show EntityValueList' where show = genericShow
instance decodeEntityValueList' :: Decode EntityValueList' where decode = genericDecode options
instance encodeEntityValueList' :: Encode EntityValueList' where encode = genericEncode options



newtype EventAggregateField' = EventAggregateField' String
derive instance newtypeEventAggregateField' :: Newtype EventAggregateField' _
derive instance repGenericEventAggregateField' :: Generic EventAggregateField' _
instance showEventAggregateField' :: Show EventAggregateField' where show = genericShow
instance decodeEventAggregateField' :: Decode EventAggregateField' where decode = genericDecode options
instance encodeEventAggregateField' :: Encode EventAggregateField' where encode = genericEncode options



newtype EventArn' = EventArn' String
derive instance newtypeEventArn' :: Newtype EventArn' _
derive instance repGenericEventArn' :: Generic EventArn' _
instance showEventArn' :: Show EventArn' where show = genericShow
instance decodeEventArn' :: Decode EventArn' where decode = genericDecode options
instance encodeEventArn' :: Encode EventArn' where encode = genericEncode options



newtype EventArnList' = EventArnList' (Array EventArn')
derive instance newtypeEventArnList' :: Newtype EventArnList' _
derive instance repGenericEventArnList' :: Generic EventArnList' _
instance showEventArnList' :: Show EventArnList' where show = genericShow
instance decodeEventArnList' :: Decode EventArnList' where decode = genericDecode options
instance encodeEventArnList' :: Encode EventArnList' where encode = genericEncode options



newtype EventDescription' = EventDescription' String
derive instance newtypeEventDescription' :: Newtype EventDescription' _
derive instance repGenericEventDescription' :: Generic EventDescription' _
instance showEventDescription' :: Show EventDescription' where show = genericShow
instance decodeEventDescription' :: Decode EventDescription' where decode = genericDecode options
instance encodeEventDescription' :: Encode EventDescription' where encode = genericEncode options



newtype EventMetadata' = EventMetadata' (StrMap.StrMap MetadataValue')
derive instance newtypeEventMetadata' :: Newtype EventMetadata' _
derive instance repGenericEventMetadata' :: Generic EventMetadata' _
instance showEventMetadata' :: Show EventMetadata' where show = genericShow
instance decodeEventMetadata' :: Decode EventMetadata' where decode = genericDecode options
instance encodeEventMetadata' :: Encode EventMetadata' where encode = genericEncode options



newtype EventStatusCode' = EventStatusCode' String
derive instance newtypeEventStatusCode' :: Newtype EventStatusCode' _
derive instance repGenericEventStatusCode' :: Generic EventStatusCode' _
instance showEventStatusCode' :: Show EventStatusCode' where show = genericShow
instance decodeEventStatusCode' :: Decode EventStatusCode' where decode = genericDecode options
instance encodeEventStatusCode' :: Encode EventStatusCode' where encode = genericEncode options



newtype EventStatusCodeList' = EventStatusCodeList' (Array EventStatusCode')
derive instance newtypeEventStatusCodeList' :: Newtype EventStatusCodeList' _
derive instance repGenericEventStatusCodeList' :: Generic EventStatusCodeList' _
instance showEventStatusCodeList' :: Show EventStatusCodeList' where show = genericShow
instance decodeEventStatusCodeList' :: Decode EventStatusCodeList' where decode = genericDecode options
instance encodeEventStatusCodeList' :: Encode EventStatusCodeList' where encode = genericEncode options



newtype EventType' = EventType' String
derive instance newtypeEventType' :: Newtype EventType' _
derive instance repGenericEventType' :: Generic EventType' _
instance showEventType' :: Show EventType' where show = genericShow
instance decodeEventType' :: Decode EventType' where decode = genericDecode options
instance encodeEventType' :: Encode EventType' where encode = genericEncode options



newtype EventTypeCategory' = EventTypeCategory' String
derive instance newtypeEventTypeCategory' :: Newtype EventTypeCategory' _
derive instance repGenericEventTypeCategory' :: Generic EventTypeCategory' _
instance showEventTypeCategory' :: Show EventTypeCategory' where show = genericShow
instance decodeEventTypeCategory' :: Decode EventTypeCategory' where decode = genericDecode options
instance encodeEventTypeCategory' :: Encode EventTypeCategory' where encode = genericEncode options



newtype EventTypeCategoryList' = EventTypeCategoryList' (Array EventTypeCategory')
derive instance newtypeEventTypeCategoryList' :: Newtype EventTypeCategoryList' _
derive instance repGenericEventTypeCategoryList' :: Generic EventTypeCategoryList' _
instance showEventTypeCategoryList' :: Show EventTypeCategoryList' where show = genericShow
instance decodeEventTypeCategoryList' :: Decode EventTypeCategoryList' where decode = genericDecode options
instance encodeEventTypeCategoryList' :: Encode EventTypeCategoryList' where encode = genericEncode options



newtype EventTypeCode' = EventTypeCode' String
derive instance newtypeEventTypeCode' :: Newtype EventTypeCode' _
derive instance repGenericEventTypeCode' :: Generic EventTypeCode' _
instance showEventTypeCode' :: Show EventTypeCode' where show = genericShow
instance decodeEventTypeCode' :: Decode EventTypeCode' where decode = genericDecode options
instance encodeEventTypeCode' :: Encode EventTypeCode' where encode = genericEncode options



newtype EventTypeList' = EventTypeList' (Array EventType')
derive instance newtypeEventTypeList' :: Newtype EventTypeList' _
derive instance repGenericEventTypeList' :: Generic EventTypeList' _
instance showEventTypeList' :: Show EventTypeList' where show = genericShow
instance decodeEventTypeList' :: Decode EventTypeList' where decode = genericDecode options
instance encodeEventTypeList' :: Encode EventTypeList' where encode = genericEncode options



newtype Locale' = Locale' String
derive instance newtypeLocale' :: Newtype Locale' _
derive instance repGenericLocale' :: Generic Locale' _
instance showLocale' :: Show Locale' where show = genericShow
instance decodeLocale' :: Decode Locale' where decode = genericDecode options
instance encodeLocale' :: Encode Locale' where encode = genericEncode options



newtype MaxResults' = MaxResults' Int
derive instance newtypeMaxResults' :: Newtype MaxResults' _
derive instance repGenericMaxResults' :: Generic MaxResults' _
instance showMaxResults' :: Show MaxResults' where show = genericShow
instance decodeMaxResults' :: Decode MaxResults' where decode = genericDecode options
instance encodeMaxResults' :: Encode MaxResults' where encode = genericEncode options



newtype MetadataKey' = MetadataKey' String
derive instance newtypeMetadataKey' :: Newtype MetadataKey' _
derive instance repGenericMetadataKey' :: Generic MetadataKey' _
instance showMetadataKey' :: Show MetadataKey' where show = genericShow
instance decodeMetadataKey' :: Decode MetadataKey' where decode = genericDecode options
instance encodeMetadataKey' :: Encode MetadataKey' where encode = genericEncode options



newtype MetadataValue' = MetadataValue' String
derive instance newtypeMetadataValue' :: Newtype MetadataValue' _
derive instance repGenericMetadataValue' :: Generic MetadataValue' _
instance showMetadataValue' :: Show MetadataValue' where show = genericShow
instance decodeMetadataValue' :: Decode MetadataValue' where decode = genericDecode options
instance encodeMetadataValue' :: Encode MetadataValue' where encode = genericEncode options



newtype NextToken' = NextToken' String
derive instance newtypeNextToken' :: Newtype NextToken' _
derive instance repGenericNextToken' :: Generic NextToken' _
instance showNextToken' :: Show NextToken' where show = genericShow
instance decodeNextToken' :: Decode NextToken' where decode = genericDecode options
instance encodeNextToken' :: Encode NextToken' where encode = genericEncode options



newtype Region' = Region' String
derive instance newtypeRegion' :: Newtype Region' _
derive instance repGenericRegion' :: Generic Region' _
instance showRegion' :: Show Region' where show = genericShow
instance decodeRegion' :: Decode Region' where decode = genericDecode options
instance encodeRegion' :: Encode Region' where encode = genericEncode options



newtype RegionList' = RegionList' (Array Region')
derive instance newtypeRegionList' :: Newtype RegionList' _
derive instance repGenericRegionList' :: Generic RegionList' _
instance showRegionList' :: Show RegionList' where show = genericShow
instance decodeRegionList' :: Decode RegionList' where decode = genericDecode options
instance encodeRegionList' :: Encode RegionList' where encode = genericEncode options



newtype Service' = Service' String
derive instance newtypeService' :: Newtype Service' _
derive instance repGenericService' :: Generic Service' _
instance showService' :: Show Service' where show = genericShow
instance decodeService' :: Decode Service' where decode = genericDecode options
instance encodeService' :: Encode Service' where encode = genericEncode options



newtype ServiceList' = ServiceList' (Array Service')
derive instance newtypeServiceList' :: Newtype ServiceList' _
derive instance repGenericServiceList' :: Generic ServiceList' _
instance showServiceList' :: Show ServiceList' where show = genericShow
instance decodeServiceList' :: Decode ServiceList' where decode = genericDecode options
instance encodeServiceList' :: Encode ServiceList' where encode = genericEncode options



newtype TagFilter' = TagFilter' (Array TagSet')
derive instance newtypeTagFilter' :: Newtype TagFilter' _
derive instance repGenericTagFilter' :: Generic TagFilter' _
instance showTagFilter' :: Show TagFilter' where show = genericShow
instance decodeTagFilter' :: Decode TagFilter' where decode = genericDecode options
instance encodeTagFilter' :: Encode TagFilter' where encode = genericEncode options



newtype TagKey' = TagKey' String
derive instance newtypeTagKey' :: Newtype TagKey' _
derive instance repGenericTagKey' :: Generic TagKey' _
instance showTagKey' :: Show TagKey' where show = genericShow
instance decodeTagKey' :: Decode TagKey' where decode = genericDecode options
instance encodeTagKey' :: Encode TagKey' where encode = genericEncode options



newtype TagSet' = TagSet' (StrMap.StrMap TagValue')
derive instance newtypeTagSet' :: Newtype TagSet' _
derive instance repGenericTagSet' :: Generic TagSet' _
instance showTagSet' :: Show TagSet' where show = genericShow
instance decodeTagSet' :: Decode TagSet' where decode = genericDecode options
instance encodeTagSet' :: Encode TagSet' where encode = genericEncode options



newtype TagValue' = TagValue' String
derive instance newtypeTagValue' :: Newtype TagValue' _
derive instance repGenericTagValue' :: Generic TagValue' _
instance showTagValue' :: Show TagValue' where show = genericShow
instance decodeTagValue' :: Decode TagValue' where decode = genericDecode options
instance encodeTagValue' :: Encode TagValue' where encode = genericEncode options

