## Module AWS.Health.Types

#### `options`

``` purescript
options :: Options
```

#### `AffectedEntity`

``` purescript
newtype AffectedEntity
  = AffectedEntity { entityArn :: NullOrUndefined (EntityArn'), eventArn :: NullOrUndefined (EventArn'), entityValue :: NullOrUndefined (EntityValue'), awsAccountId :: NullOrUndefined (AccountId'), lastUpdatedTime :: NullOrUndefined (Timestamp), statusCode :: NullOrUndefined (EntityStatusCode'), tags :: NullOrUndefined (TagSet') }
```

<p>Information about an entity that is affected by a Health event.</p>

##### Instances
``` purescript
Newtype AffectedEntity _
Generic AffectedEntity _
Show AffectedEntity
Decode AffectedEntity
Encode AffectedEntity
```

#### `newAffectedEntity`

``` purescript
newAffectedEntity :: AffectedEntity
```

Constructs AffectedEntity from required parameters

#### `newAffectedEntity'`

``` purescript
newAffectedEntity' :: ({ entityArn :: NullOrUndefined (EntityArn'), eventArn :: NullOrUndefined (EventArn'), entityValue :: NullOrUndefined (EntityValue'), awsAccountId :: NullOrUndefined (AccountId'), lastUpdatedTime :: NullOrUndefined (Timestamp), statusCode :: NullOrUndefined (EntityStatusCode'), tags :: NullOrUndefined (TagSet') } -> { entityArn :: NullOrUndefined (EntityArn'), eventArn :: NullOrUndefined (EventArn'), entityValue :: NullOrUndefined (EntityValue'), awsAccountId :: NullOrUndefined (AccountId'), lastUpdatedTime :: NullOrUndefined (Timestamp), statusCode :: NullOrUndefined (EntityStatusCode'), tags :: NullOrUndefined (TagSet') }) -> AffectedEntity
```

Constructs AffectedEntity's fields from required parameters

#### `DateTimeRange`

``` purescript
newtype DateTimeRange
  = DateTimeRange { from :: NullOrUndefined (Timestamp), to :: NullOrUndefined (Timestamp) }
```

<p>A range of dates and times that is used by the <a>EventFilter</a> and <a>EntityFilter</a> objects. If <code>from</code> is set and <code>to</code> is set: match items where the timestamp (<code>startTime</code>, <code>endTime</code>, or <code>lastUpdatedTime</code>) is between <code>from</code> and <code>to</code> inclusive. If <code>from</code> is set and <code>to</code> is not set: match items where the timestamp value is equal to or after <code>from</code>. If <code>from</code> is not set and <code>to</code> is set: match items where the timestamp value is equal to or before <code>to</code>.</p>

##### Instances
``` purescript
Newtype DateTimeRange _
Generic DateTimeRange _
Show DateTimeRange
Decode DateTimeRange
Encode DateTimeRange
```

#### `newDateTimeRange`

``` purescript
newDateTimeRange :: DateTimeRange
```

Constructs DateTimeRange from required parameters

#### `newDateTimeRange'`

``` purescript
newDateTimeRange' :: ({ from :: NullOrUndefined (Timestamp), to :: NullOrUndefined (Timestamp) } -> { from :: NullOrUndefined (Timestamp), to :: NullOrUndefined (Timestamp) }) -> DateTimeRange
```

Constructs DateTimeRange's fields from required parameters

#### `DescribeAffectedEntitiesRequest`

``` purescript
newtype DescribeAffectedEntitiesRequest
  = DescribeAffectedEntitiesRequest { filter :: EntityFilter, locale :: NullOrUndefined (Locale'), nextToken :: NullOrUndefined (NextToken'), maxResults :: NullOrUndefined (MaxResults') }
```

##### Instances
``` purescript
Newtype DescribeAffectedEntitiesRequest _
Generic DescribeAffectedEntitiesRequest _
Show DescribeAffectedEntitiesRequest
Decode DescribeAffectedEntitiesRequest
Encode DescribeAffectedEntitiesRequest
```

#### `newDescribeAffectedEntitiesRequest`

``` purescript
newDescribeAffectedEntitiesRequest :: EntityFilter -> DescribeAffectedEntitiesRequest
```

Constructs DescribeAffectedEntitiesRequest from required parameters

#### `newDescribeAffectedEntitiesRequest'`

``` purescript
newDescribeAffectedEntitiesRequest' :: EntityFilter -> ({ filter :: EntityFilter, locale :: NullOrUndefined (Locale'), nextToken :: NullOrUndefined (NextToken'), maxResults :: NullOrUndefined (MaxResults') } -> { filter :: EntityFilter, locale :: NullOrUndefined (Locale'), nextToken :: NullOrUndefined (NextToken'), maxResults :: NullOrUndefined (MaxResults') }) -> DescribeAffectedEntitiesRequest
```

Constructs DescribeAffectedEntitiesRequest's fields from required parameters

#### `DescribeAffectedEntitiesResponse`

``` purescript
newtype DescribeAffectedEntitiesResponse
  = DescribeAffectedEntitiesResponse { entities :: NullOrUndefined (EntityList), nextToken :: NullOrUndefined (NextToken') }
```

##### Instances
``` purescript
Newtype DescribeAffectedEntitiesResponse _
Generic DescribeAffectedEntitiesResponse _
Show DescribeAffectedEntitiesResponse
Decode DescribeAffectedEntitiesResponse
Encode DescribeAffectedEntitiesResponse
```

#### `newDescribeAffectedEntitiesResponse`

``` purescript
newDescribeAffectedEntitiesResponse :: DescribeAffectedEntitiesResponse
```

Constructs DescribeAffectedEntitiesResponse from required parameters

#### `newDescribeAffectedEntitiesResponse'`

``` purescript
newDescribeAffectedEntitiesResponse' :: ({ entities :: NullOrUndefined (EntityList), nextToken :: NullOrUndefined (NextToken') } -> { entities :: NullOrUndefined (EntityList), nextToken :: NullOrUndefined (NextToken') }) -> DescribeAffectedEntitiesResponse
```

Constructs DescribeAffectedEntitiesResponse's fields from required parameters

#### `DescribeEntityAggregatesRequest`

``` purescript
newtype DescribeEntityAggregatesRequest
  = DescribeEntityAggregatesRequest { eventArns :: NullOrUndefined (EventArnsList) }
```

##### Instances
``` purescript
Newtype DescribeEntityAggregatesRequest _
Generic DescribeEntityAggregatesRequest _
Show DescribeEntityAggregatesRequest
Decode DescribeEntityAggregatesRequest
Encode DescribeEntityAggregatesRequest
```

#### `newDescribeEntityAggregatesRequest`

``` purescript
newDescribeEntityAggregatesRequest :: DescribeEntityAggregatesRequest
```

Constructs DescribeEntityAggregatesRequest from required parameters

#### `newDescribeEntityAggregatesRequest'`

``` purescript
newDescribeEntityAggregatesRequest' :: ({ eventArns :: NullOrUndefined (EventArnsList) } -> { eventArns :: NullOrUndefined (EventArnsList) }) -> DescribeEntityAggregatesRequest
```

Constructs DescribeEntityAggregatesRequest's fields from required parameters

#### `DescribeEntityAggregatesResponse`

``` purescript
newtype DescribeEntityAggregatesResponse
  = DescribeEntityAggregatesResponse { entityAggregates :: NullOrUndefined (EntityAggregateList) }
```

##### Instances
``` purescript
Newtype DescribeEntityAggregatesResponse _
Generic DescribeEntityAggregatesResponse _
Show DescribeEntityAggregatesResponse
Decode DescribeEntityAggregatesResponse
Encode DescribeEntityAggregatesResponse
```

#### `newDescribeEntityAggregatesResponse`

``` purescript
newDescribeEntityAggregatesResponse :: DescribeEntityAggregatesResponse
```

Constructs DescribeEntityAggregatesResponse from required parameters

#### `newDescribeEntityAggregatesResponse'`

``` purescript
newDescribeEntityAggregatesResponse' :: ({ entityAggregates :: NullOrUndefined (EntityAggregateList) } -> { entityAggregates :: NullOrUndefined (EntityAggregateList) }) -> DescribeEntityAggregatesResponse
```

Constructs DescribeEntityAggregatesResponse's fields from required parameters

#### `DescribeEventAggregatesRequest`

``` purescript
newtype DescribeEventAggregatesRequest
  = DescribeEventAggregatesRequest { filter :: NullOrUndefined (EventFilter), aggregateField :: EventAggregateField', maxResults :: NullOrUndefined (MaxResults'), nextToken :: NullOrUndefined (NextToken') }
```

##### Instances
``` purescript
Newtype DescribeEventAggregatesRequest _
Generic DescribeEventAggregatesRequest _
Show DescribeEventAggregatesRequest
Decode DescribeEventAggregatesRequest
Encode DescribeEventAggregatesRequest
```

#### `newDescribeEventAggregatesRequest`

``` purescript
newDescribeEventAggregatesRequest :: EventAggregateField' -> DescribeEventAggregatesRequest
```

Constructs DescribeEventAggregatesRequest from required parameters

#### `newDescribeEventAggregatesRequest'`

``` purescript
newDescribeEventAggregatesRequest' :: EventAggregateField' -> ({ filter :: NullOrUndefined (EventFilter), aggregateField :: EventAggregateField', maxResults :: NullOrUndefined (MaxResults'), nextToken :: NullOrUndefined (NextToken') } -> { filter :: NullOrUndefined (EventFilter), aggregateField :: EventAggregateField', maxResults :: NullOrUndefined (MaxResults'), nextToken :: NullOrUndefined (NextToken') }) -> DescribeEventAggregatesRequest
```

Constructs DescribeEventAggregatesRequest's fields from required parameters

#### `DescribeEventAggregatesResponse`

``` purescript
newtype DescribeEventAggregatesResponse
  = DescribeEventAggregatesResponse { eventAggregates :: NullOrUndefined (EventAggregateList), nextToken :: NullOrUndefined (NextToken') }
```

##### Instances
``` purescript
Newtype DescribeEventAggregatesResponse _
Generic DescribeEventAggregatesResponse _
Show DescribeEventAggregatesResponse
Decode DescribeEventAggregatesResponse
Encode DescribeEventAggregatesResponse
```

#### `newDescribeEventAggregatesResponse`

``` purescript
newDescribeEventAggregatesResponse :: DescribeEventAggregatesResponse
```

Constructs DescribeEventAggregatesResponse from required parameters

#### `newDescribeEventAggregatesResponse'`

``` purescript
newDescribeEventAggregatesResponse' :: ({ eventAggregates :: NullOrUndefined (EventAggregateList), nextToken :: NullOrUndefined (NextToken') } -> { eventAggregates :: NullOrUndefined (EventAggregateList), nextToken :: NullOrUndefined (NextToken') }) -> DescribeEventAggregatesResponse
```

Constructs DescribeEventAggregatesResponse's fields from required parameters

#### `DescribeEventDetailsFailedSet`

``` purescript
newtype DescribeEventDetailsFailedSet
  = DescribeEventDetailsFailedSet (Array EventDetailsErrorItem)
```

##### Instances
``` purescript
Newtype DescribeEventDetailsFailedSet _
Generic DescribeEventDetailsFailedSet _
Show DescribeEventDetailsFailedSet
Decode DescribeEventDetailsFailedSet
Encode DescribeEventDetailsFailedSet
```

#### `DescribeEventDetailsRequest`

``` purescript
newtype DescribeEventDetailsRequest
  = DescribeEventDetailsRequest { eventArns :: EventArnList', locale :: NullOrUndefined (Locale') }
```

##### Instances
``` purescript
Newtype DescribeEventDetailsRequest _
Generic DescribeEventDetailsRequest _
Show DescribeEventDetailsRequest
Decode DescribeEventDetailsRequest
Encode DescribeEventDetailsRequest
```

#### `newDescribeEventDetailsRequest`

``` purescript
newDescribeEventDetailsRequest :: EventArnList' -> DescribeEventDetailsRequest
```

Constructs DescribeEventDetailsRequest from required parameters

#### `newDescribeEventDetailsRequest'`

``` purescript
newDescribeEventDetailsRequest' :: EventArnList' -> ({ eventArns :: EventArnList', locale :: NullOrUndefined (Locale') } -> { eventArns :: EventArnList', locale :: NullOrUndefined (Locale') }) -> DescribeEventDetailsRequest
```

Constructs DescribeEventDetailsRequest's fields from required parameters

#### `DescribeEventDetailsResponse`

``` purescript
newtype DescribeEventDetailsResponse
  = DescribeEventDetailsResponse { successfulSet :: NullOrUndefined (DescribeEventDetailsSuccessfulSet), failedSet :: NullOrUndefined (DescribeEventDetailsFailedSet) }
```

##### Instances
``` purescript
Newtype DescribeEventDetailsResponse _
Generic DescribeEventDetailsResponse _
Show DescribeEventDetailsResponse
Decode DescribeEventDetailsResponse
Encode DescribeEventDetailsResponse
```

#### `newDescribeEventDetailsResponse`

``` purescript
newDescribeEventDetailsResponse :: DescribeEventDetailsResponse
```

Constructs DescribeEventDetailsResponse from required parameters

#### `newDescribeEventDetailsResponse'`

``` purescript
newDescribeEventDetailsResponse' :: ({ successfulSet :: NullOrUndefined (DescribeEventDetailsSuccessfulSet), failedSet :: NullOrUndefined (DescribeEventDetailsFailedSet) } -> { successfulSet :: NullOrUndefined (DescribeEventDetailsSuccessfulSet), failedSet :: NullOrUndefined (DescribeEventDetailsFailedSet) }) -> DescribeEventDetailsResponse
```

Constructs DescribeEventDetailsResponse's fields from required parameters

#### `DescribeEventDetailsSuccessfulSet`

``` purescript
newtype DescribeEventDetailsSuccessfulSet
  = DescribeEventDetailsSuccessfulSet (Array EventDetails)
```

##### Instances
``` purescript
Newtype DescribeEventDetailsSuccessfulSet _
Generic DescribeEventDetailsSuccessfulSet _
Show DescribeEventDetailsSuccessfulSet
Decode DescribeEventDetailsSuccessfulSet
Encode DescribeEventDetailsSuccessfulSet
```

#### `DescribeEventTypesRequest`

``` purescript
newtype DescribeEventTypesRequest
  = DescribeEventTypesRequest { filter :: NullOrUndefined (EventTypeFilter), locale :: NullOrUndefined (Locale'), nextToken :: NullOrUndefined (NextToken'), maxResults :: NullOrUndefined (MaxResults') }
```

##### Instances
``` purescript
Newtype DescribeEventTypesRequest _
Generic DescribeEventTypesRequest _
Show DescribeEventTypesRequest
Decode DescribeEventTypesRequest
Encode DescribeEventTypesRequest
```

#### `newDescribeEventTypesRequest`

``` purescript
newDescribeEventTypesRequest :: DescribeEventTypesRequest
```

Constructs DescribeEventTypesRequest from required parameters

#### `newDescribeEventTypesRequest'`

``` purescript
newDescribeEventTypesRequest' :: ({ filter :: NullOrUndefined (EventTypeFilter), locale :: NullOrUndefined (Locale'), nextToken :: NullOrUndefined (NextToken'), maxResults :: NullOrUndefined (MaxResults') } -> { filter :: NullOrUndefined (EventTypeFilter), locale :: NullOrUndefined (Locale'), nextToken :: NullOrUndefined (NextToken'), maxResults :: NullOrUndefined (MaxResults') }) -> DescribeEventTypesRequest
```

Constructs DescribeEventTypesRequest's fields from required parameters

#### `DescribeEventTypesResponse`

``` purescript
newtype DescribeEventTypesResponse
  = DescribeEventTypesResponse { eventTypes :: NullOrUndefined (EventTypeList), nextToken :: NullOrUndefined (NextToken') }
```

##### Instances
``` purescript
Newtype DescribeEventTypesResponse _
Generic DescribeEventTypesResponse _
Show DescribeEventTypesResponse
Decode DescribeEventTypesResponse
Encode DescribeEventTypesResponse
```

#### `newDescribeEventTypesResponse`

``` purescript
newDescribeEventTypesResponse :: DescribeEventTypesResponse
```

Constructs DescribeEventTypesResponse from required parameters

#### `newDescribeEventTypesResponse'`

``` purescript
newDescribeEventTypesResponse' :: ({ eventTypes :: NullOrUndefined (EventTypeList), nextToken :: NullOrUndefined (NextToken') } -> { eventTypes :: NullOrUndefined (EventTypeList), nextToken :: NullOrUndefined (NextToken') }) -> DescribeEventTypesResponse
```

Constructs DescribeEventTypesResponse's fields from required parameters

#### `DescribeEventsRequest`

``` purescript
newtype DescribeEventsRequest
  = DescribeEventsRequest { filter :: NullOrUndefined (EventFilter), nextToken :: NullOrUndefined (NextToken'), maxResults :: NullOrUndefined (MaxResults'), locale :: NullOrUndefined (Locale') }
```

##### Instances
``` purescript
Newtype DescribeEventsRequest _
Generic DescribeEventsRequest _
Show DescribeEventsRequest
Decode DescribeEventsRequest
Encode DescribeEventsRequest
```

#### `newDescribeEventsRequest`

``` purescript
newDescribeEventsRequest :: DescribeEventsRequest
```

Constructs DescribeEventsRequest from required parameters

#### `newDescribeEventsRequest'`

``` purescript
newDescribeEventsRequest' :: ({ filter :: NullOrUndefined (EventFilter), nextToken :: NullOrUndefined (NextToken'), maxResults :: NullOrUndefined (MaxResults'), locale :: NullOrUndefined (Locale') } -> { filter :: NullOrUndefined (EventFilter), nextToken :: NullOrUndefined (NextToken'), maxResults :: NullOrUndefined (MaxResults'), locale :: NullOrUndefined (Locale') }) -> DescribeEventsRequest
```

Constructs DescribeEventsRequest's fields from required parameters

#### `DescribeEventsResponse`

``` purescript
newtype DescribeEventsResponse
  = DescribeEventsResponse { events :: NullOrUndefined (EventList), nextToken :: NullOrUndefined (NextToken') }
```

##### Instances
``` purescript
Newtype DescribeEventsResponse _
Generic DescribeEventsResponse _
Show DescribeEventsResponse
Decode DescribeEventsResponse
Encode DescribeEventsResponse
```

#### `newDescribeEventsResponse`

``` purescript
newDescribeEventsResponse :: DescribeEventsResponse
```

Constructs DescribeEventsResponse from required parameters

#### `newDescribeEventsResponse'`

``` purescript
newDescribeEventsResponse' :: ({ events :: NullOrUndefined (EventList), nextToken :: NullOrUndefined (NextToken') } -> { events :: NullOrUndefined (EventList), nextToken :: NullOrUndefined (NextToken') }) -> DescribeEventsResponse
```

Constructs DescribeEventsResponse's fields from required parameters

#### `EntityAggregate`

``` purescript
newtype EntityAggregate
  = EntityAggregate { eventArn :: NullOrUndefined (EventArn'), count :: NullOrUndefined (Count') }
```

<p>The number of entities that are affected by one or more events. Returned by the <a>DescribeEntityAggregates</a> operation.</p>

##### Instances
``` purescript
Newtype EntityAggregate _
Generic EntityAggregate _
Show EntityAggregate
Decode EntityAggregate
Encode EntityAggregate
```

#### `newEntityAggregate`

``` purescript
newEntityAggregate :: EntityAggregate
```

Constructs EntityAggregate from required parameters

#### `newEntityAggregate'`

``` purescript
newEntityAggregate' :: ({ eventArn :: NullOrUndefined (EventArn'), count :: NullOrUndefined (Count') } -> { eventArn :: NullOrUndefined (EventArn'), count :: NullOrUndefined (Count') }) -> EntityAggregate
```

Constructs EntityAggregate's fields from required parameters

#### `EntityAggregateList`

``` purescript
newtype EntityAggregateList
  = EntityAggregateList (Array EntityAggregate)
```

##### Instances
``` purescript
Newtype EntityAggregateList _
Generic EntityAggregateList _
Show EntityAggregateList
Decode EntityAggregateList
Encode EntityAggregateList
```

#### `EntityFilter`

``` purescript
newtype EntityFilter
  = EntityFilter { eventArns :: EventArnList', entityArns :: NullOrUndefined (EntityArnList'), entityValues :: NullOrUndefined (EntityValueList'), lastUpdatedTimes :: NullOrUndefined (DateTimeRangeList'), tags :: NullOrUndefined (TagFilter'), statusCodes :: NullOrUndefined (EntityStatusCodeList') }
```

<p>The values to use to filter results from the <a>DescribeAffectedEntities</a> operation.</p>

##### Instances
``` purescript
Newtype EntityFilter _
Generic EntityFilter _
Show EntityFilter
Decode EntityFilter
Encode EntityFilter
```

#### `newEntityFilter`

``` purescript
newEntityFilter :: EventArnList' -> EntityFilter
```

Constructs EntityFilter from required parameters

#### `newEntityFilter'`

``` purescript
newEntityFilter' :: EventArnList' -> ({ eventArns :: EventArnList', entityArns :: NullOrUndefined (EntityArnList'), entityValues :: NullOrUndefined (EntityValueList'), lastUpdatedTimes :: NullOrUndefined (DateTimeRangeList'), tags :: NullOrUndefined (TagFilter'), statusCodes :: NullOrUndefined (EntityStatusCodeList') } -> { eventArns :: EventArnList', entityArns :: NullOrUndefined (EntityArnList'), entityValues :: NullOrUndefined (EntityValueList'), lastUpdatedTimes :: NullOrUndefined (DateTimeRangeList'), tags :: NullOrUndefined (TagFilter'), statusCodes :: NullOrUndefined (EntityStatusCodeList') }) -> EntityFilter
```

Constructs EntityFilter's fields from required parameters

#### `EntityList`

``` purescript
newtype EntityList
  = EntityList (Array AffectedEntity)
```

##### Instances
``` purescript
Newtype EntityList _
Generic EntityList _
Show EntityList
Decode EntityList
Encode EntityList
```

#### `Event`

``` purescript
newtype Event
  = Event { arn :: NullOrUndefined (EventArn'), service :: NullOrUndefined (Service'), eventTypeCode :: NullOrUndefined (EventTypeCode'), eventTypeCategory :: NullOrUndefined (EventTypeCategory'), region :: NullOrUndefined (Region'), availabilityZone :: NullOrUndefined (AvailabilityZone'), startTime :: NullOrUndefined (Timestamp), endTime :: NullOrUndefined (Timestamp), lastUpdatedTime :: NullOrUndefined (Timestamp), statusCode :: NullOrUndefined (EventStatusCode') }
```

<p>Summary information about an event, returned by the <a>DescribeEvents</a> operation. The <a>DescribeEventDetails</a> operation also returns this information, as well as the <a>EventDescription</a> and additional event metadata.</p>

##### Instances
``` purescript
Newtype Event _
Generic Event _
Show Event
Decode Event
Encode Event
```

#### `newEvent`

``` purescript
newEvent :: Event
```

Constructs Event from required parameters

#### `newEvent'`

``` purescript
newEvent' :: ({ arn :: NullOrUndefined (EventArn'), service :: NullOrUndefined (Service'), eventTypeCode :: NullOrUndefined (EventTypeCode'), eventTypeCategory :: NullOrUndefined (EventTypeCategory'), region :: NullOrUndefined (Region'), availabilityZone :: NullOrUndefined (AvailabilityZone'), startTime :: NullOrUndefined (Timestamp), endTime :: NullOrUndefined (Timestamp), lastUpdatedTime :: NullOrUndefined (Timestamp), statusCode :: NullOrUndefined (EventStatusCode') } -> { arn :: NullOrUndefined (EventArn'), service :: NullOrUndefined (Service'), eventTypeCode :: NullOrUndefined (EventTypeCode'), eventTypeCategory :: NullOrUndefined (EventTypeCategory'), region :: NullOrUndefined (Region'), availabilityZone :: NullOrUndefined (AvailabilityZone'), startTime :: NullOrUndefined (Timestamp), endTime :: NullOrUndefined (Timestamp), lastUpdatedTime :: NullOrUndefined (Timestamp), statusCode :: NullOrUndefined (EventStatusCode') }) -> Event
```

Constructs Event's fields from required parameters

#### `EventAggregate`

``` purescript
newtype EventAggregate
  = EventAggregate { aggregateValue :: NullOrUndefined (AggregateValue'), count :: NullOrUndefined (Count') }
```

<p>The number of events of each issue type. Returned by the <a>DescribeEventAggregates</a> operation.</p>

##### Instances
``` purescript
Newtype EventAggregate _
Generic EventAggregate _
Show EventAggregate
Decode EventAggregate
Encode EventAggregate
```

#### `newEventAggregate`

``` purescript
newEventAggregate :: EventAggregate
```

Constructs EventAggregate from required parameters

#### `newEventAggregate'`

``` purescript
newEventAggregate' :: ({ aggregateValue :: NullOrUndefined (AggregateValue'), count :: NullOrUndefined (Count') } -> { aggregateValue :: NullOrUndefined (AggregateValue'), count :: NullOrUndefined (Count') }) -> EventAggregate
```

Constructs EventAggregate's fields from required parameters

#### `EventAggregateList`

``` purescript
newtype EventAggregateList
  = EventAggregateList (Array EventAggregate)
```

##### Instances
``` purescript
Newtype EventAggregateList _
Generic EventAggregateList _
Show EventAggregateList
Decode EventAggregateList
Encode EventAggregateList
```

#### `EventArnsList`

``` purescript
newtype EventArnsList
  = EventArnsList (Array EventArn')
```

##### Instances
``` purescript
Newtype EventArnsList _
Generic EventArnsList _
Show EventArnsList
Decode EventArnsList
Encode EventArnsList
```

#### `EventDescription`

``` purescript
newtype EventDescription
  = EventDescription { latestDescription :: NullOrUndefined (EventDescription') }
```

<p>The detailed description of the event. Included in the information returned by the <a>DescribeEventDetails</a> operation.</p>

##### Instances
``` purescript
Newtype EventDescription _
Generic EventDescription _
Show EventDescription
Decode EventDescription
Encode EventDescription
```

#### `newEventDescription`

``` purescript
newEventDescription :: EventDescription
```

Constructs EventDescription from required parameters

#### `newEventDescription'`

``` purescript
newEventDescription' :: ({ latestDescription :: NullOrUndefined (EventDescription') } -> { latestDescription :: NullOrUndefined (EventDescription') }) -> EventDescription
```

Constructs EventDescription's fields from required parameters

#### `EventDetails`

``` purescript
newtype EventDetails
  = EventDetails { event :: NullOrUndefined (Event), eventDescription :: NullOrUndefined (EventDescription), eventMetadata :: NullOrUndefined (EventMetadata') }
```

<p>Detailed information about an event. A combination of an <a>Event</a> object, an <a>EventDescription</a> object, and additional metadata about the event. Returned by the <a>DescribeEventDetails</a> operation.</p>

##### Instances
``` purescript
Newtype EventDetails _
Generic EventDetails _
Show EventDetails
Decode EventDetails
Encode EventDetails
```

#### `newEventDetails`

``` purescript
newEventDetails :: EventDetails
```

Constructs EventDetails from required parameters

#### `newEventDetails'`

``` purescript
newEventDetails' :: ({ event :: NullOrUndefined (Event), eventDescription :: NullOrUndefined (EventDescription), eventMetadata :: NullOrUndefined (EventMetadata') } -> { event :: NullOrUndefined (Event), eventDescription :: NullOrUndefined (EventDescription), eventMetadata :: NullOrUndefined (EventMetadata') }) -> EventDetails
```

Constructs EventDetails's fields from required parameters

#### `EventDetailsErrorItem`

``` purescript
newtype EventDetailsErrorItem
  = EventDetailsErrorItem { eventArn :: NullOrUndefined (EventArn'), errorName :: NullOrUndefined (String), errorMessage :: NullOrUndefined (String) }
```

<p>Error information returned when a <a>DescribeEventDetails</a> operation cannot find a specified event.</p>

##### Instances
``` purescript
Newtype EventDetailsErrorItem _
Generic EventDetailsErrorItem _
Show EventDetailsErrorItem
Decode EventDetailsErrorItem
Encode EventDetailsErrorItem
```

#### `newEventDetailsErrorItem`

``` purescript
newEventDetailsErrorItem :: EventDetailsErrorItem
```

Constructs EventDetailsErrorItem from required parameters

#### `newEventDetailsErrorItem'`

``` purescript
newEventDetailsErrorItem' :: ({ eventArn :: NullOrUndefined (EventArn'), errorName :: NullOrUndefined (String), errorMessage :: NullOrUndefined (String) } -> { eventArn :: NullOrUndefined (EventArn'), errorName :: NullOrUndefined (String), errorMessage :: NullOrUndefined (String) }) -> EventDetailsErrorItem
```

Constructs EventDetailsErrorItem's fields from required parameters

#### `EventFilter`

``` purescript
newtype EventFilter
  = EventFilter { eventArns :: NullOrUndefined (EventArnList'), eventTypeCodes :: NullOrUndefined (EventTypeList'), services :: NullOrUndefined (ServiceList'), regions :: NullOrUndefined (RegionList'), availabilityZones :: NullOrUndefined (AvailabilityZones'), startTimes :: NullOrUndefined (DateTimeRangeList'), endTimes :: NullOrUndefined (DateTimeRangeList'), lastUpdatedTimes :: NullOrUndefined (DateTimeRangeList'), entityArns :: NullOrUndefined (EntityArnList'), entityValues :: NullOrUndefined (EntityValueList'), eventTypeCategories :: NullOrUndefined (EventTypeCategoryList'), tags :: NullOrUndefined (TagFilter'), eventStatusCodes :: NullOrUndefined (EventStatusCodeList') }
```

<p>The values to use to filter results from the <a>DescribeEvents</a> and <a>DescribeEventAggregates</a> operations.</p>

##### Instances
``` purescript
Newtype EventFilter _
Generic EventFilter _
Show EventFilter
Decode EventFilter
Encode EventFilter
```

#### `newEventFilter`

``` purescript
newEventFilter :: EventFilter
```

Constructs EventFilter from required parameters

#### `newEventFilter'`

``` purescript
newEventFilter' :: ({ eventArns :: NullOrUndefined (EventArnList'), eventTypeCodes :: NullOrUndefined (EventTypeList'), services :: NullOrUndefined (ServiceList'), regions :: NullOrUndefined (RegionList'), availabilityZones :: NullOrUndefined (AvailabilityZones'), startTimes :: NullOrUndefined (DateTimeRangeList'), endTimes :: NullOrUndefined (DateTimeRangeList'), lastUpdatedTimes :: NullOrUndefined (DateTimeRangeList'), entityArns :: NullOrUndefined (EntityArnList'), entityValues :: NullOrUndefined (EntityValueList'), eventTypeCategories :: NullOrUndefined (EventTypeCategoryList'), tags :: NullOrUndefined (TagFilter'), eventStatusCodes :: NullOrUndefined (EventStatusCodeList') } -> { eventArns :: NullOrUndefined (EventArnList'), eventTypeCodes :: NullOrUndefined (EventTypeList'), services :: NullOrUndefined (ServiceList'), regions :: NullOrUndefined (RegionList'), availabilityZones :: NullOrUndefined (AvailabilityZones'), startTimes :: NullOrUndefined (DateTimeRangeList'), endTimes :: NullOrUndefined (DateTimeRangeList'), lastUpdatedTimes :: NullOrUndefined (DateTimeRangeList'), entityArns :: NullOrUndefined (EntityArnList'), entityValues :: NullOrUndefined (EntityValueList'), eventTypeCategories :: NullOrUndefined (EventTypeCategoryList'), tags :: NullOrUndefined (TagFilter'), eventStatusCodes :: NullOrUndefined (EventStatusCodeList') }) -> EventFilter
```

Constructs EventFilter's fields from required parameters

#### `EventList`

``` purescript
newtype EventList
  = EventList (Array Event)
```

##### Instances
``` purescript
Newtype EventList _
Generic EventList _
Show EventList
Decode EventList
Encode EventList
```

#### `EventType`

``` purescript
newtype EventType
  = EventType { service :: NullOrUndefined (Service'), code :: NullOrUndefined (EventTypeCode'), category :: NullOrUndefined (EventTypeCategory') }
```

<p>Metadata about a type of event that is reported by AWS Health. Data consists of the category (for example, <code>issue</code>), the service (for example, <code>EC2</code>), and the event type code (for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>).</p>

##### Instances
``` purescript
Newtype EventType _
Generic EventType _
Show EventType
Decode EventType
Encode EventType
```

#### `newEventType`

``` purescript
newEventType :: EventType
```

Constructs EventType from required parameters

#### `newEventType'`

``` purescript
newEventType' :: ({ service :: NullOrUndefined (Service'), code :: NullOrUndefined (EventTypeCode'), category :: NullOrUndefined (EventTypeCategory') } -> { service :: NullOrUndefined (Service'), code :: NullOrUndefined (EventTypeCode'), category :: NullOrUndefined (EventTypeCategory') }) -> EventType
```

Constructs EventType's fields from required parameters

#### `EventTypeCategoryList`

``` purescript
newtype EventTypeCategoryList
  = EventTypeCategoryList (Array EventTypeCategory')
```

##### Instances
``` purescript
Newtype EventTypeCategoryList _
Generic EventTypeCategoryList _
Show EventTypeCategoryList
Decode EventTypeCategoryList
Encode EventTypeCategoryList
```

#### `EventTypeCodeList`

``` purescript
newtype EventTypeCodeList
  = EventTypeCodeList (Array EventTypeCode')
```

##### Instances
``` purescript
Newtype EventTypeCodeList _
Generic EventTypeCodeList _
Show EventTypeCodeList
Decode EventTypeCodeList
Encode EventTypeCodeList
```

#### `EventTypeFilter`

``` purescript
newtype EventTypeFilter
  = EventTypeFilter { eventTypeCodes :: NullOrUndefined (EventTypeCodeList), services :: NullOrUndefined (ServiceList'), eventTypeCategories :: NullOrUndefined (EventTypeCategoryList) }
```

<p>The values to use to filter results from the <a>DescribeEventTypes</a> operation.</p>

##### Instances
``` purescript
Newtype EventTypeFilter _
Generic EventTypeFilter _
Show EventTypeFilter
Decode EventTypeFilter
Encode EventTypeFilter
```

#### `newEventTypeFilter`

``` purescript
newEventTypeFilter :: EventTypeFilter
```

Constructs EventTypeFilter from required parameters

#### `newEventTypeFilter'`

``` purescript
newEventTypeFilter' :: ({ eventTypeCodes :: NullOrUndefined (EventTypeCodeList), services :: NullOrUndefined (ServiceList'), eventTypeCategories :: NullOrUndefined (EventTypeCategoryList) } -> { eventTypeCodes :: NullOrUndefined (EventTypeCodeList), services :: NullOrUndefined (ServiceList'), eventTypeCategories :: NullOrUndefined (EventTypeCategoryList) }) -> EventTypeFilter
```

Constructs EventTypeFilter's fields from required parameters

#### `EventTypeList`

``` purescript
newtype EventTypeList
  = EventTypeList (Array EventType)
```

##### Instances
``` purescript
Newtype EventTypeList _
Generic EventTypeList _
Show EventTypeList
Decode EventTypeList
Encode EventTypeList
```

#### `InvalidPaginationToken`

``` purescript
newtype InvalidPaginationToken
  = InvalidPaginationToken { message :: NullOrUndefined (String) }
```

<p>The specified pagination token (<code>nextToken</code>) is not valid.</p>

##### Instances
``` purescript
Newtype InvalidPaginationToken _
Generic InvalidPaginationToken _
Show InvalidPaginationToken
Decode InvalidPaginationToken
Encode InvalidPaginationToken
```

#### `newInvalidPaginationToken`

``` purescript
newInvalidPaginationToken :: InvalidPaginationToken
```

Constructs InvalidPaginationToken from required parameters

#### `newInvalidPaginationToken'`

``` purescript
newInvalidPaginationToken' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> InvalidPaginationToken
```

Constructs InvalidPaginationToken's fields from required parameters

#### `UnsupportedLocale`

``` purescript
newtype UnsupportedLocale
  = UnsupportedLocale { message :: NullOrUndefined (String) }
```

<p>The specified locale is not supported.</p>

##### Instances
``` purescript
Newtype UnsupportedLocale _
Generic UnsupportedLocale _
Show UnsupportedLocale
Decode UnsupportedLocale
Encode UnsupportedLocale
```

#### `newUnsupportedLocale`

``` purescript
newUnsupportedLocale :: UnsupportedLocale
```

Constructs UnsupportedLocale from required parameters

#### `newUnsupportedLocale'`

``` purescript
newUnsupportedLocale' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> UnsupportedLocale
```

Constructs UnsupportedLocale's fields from required parameters

#### `AccountId'`

``` purescript
newtype AccountId'
  = AccountId' String
```

##### Instances
``` purescript
Newtype AccountId' _
Generic AccountId' _
Show AccountId'
Decode AccountId'
Encode AccountId'
```

#### `AggregateValue'`

``` purescript
newtype AggregateValue'
  = AggregateValue' String
```

##### Instances
``` purescript
Newtype AggregateValue' _
Generic AggregateValue' _
Show AggregateValue'
Decode AggregateValue'
Encode AggregateValue'
```

#### `AvailabilityZone'`

``` purescript
newtype AvailabilityZone'
  = AvailabilityZone' String
```

##### Instances
``` purescript
Newtype AvailabilityZone' _
Generic AvailabilityZone' _
Show AvailabilityZone'
Decode AvailabilityZone'
Encode AvailabilityZone'
```

#### `AvailabilityZones'`

``` purescript
newtype AvailabilityZones'
  = AvailabilityZones' (Array AvailabilityZone')
```

##### Instances
``` purescript
Newtype AvailabilityZones' _
Generic AvailabilityZones' _
Show AvailabilityZones'
Decode AvailabilityZones'
Encode AvailabilityZones'
```

#### `Count'`

``` purescript
newtype Count'
  = Count' Int
```

##### Instances
``` purescript
Newtype Count' _
Generic Count' _
Show Count'
Decode Count'
Encode Count'
```

#### `DateTimeRangeList'`

``` purescript
newtype DateTimeRangeList'
  = DateTimeRangeList' (Array DateTimeRange)
```

##### Instances
``` purescript
Newtype DateTimeRangeList' _
Generic DateTimeRangeList' _
Show DateTimeRangeList'
Decode DateTimeRangeList'
Encode DateTimeRangeList'
```

#### `EntityArn'`

``` purescript
newtype EntityArn'
  = EntityArn' String
```

##### Instances
``` purescript
Newtype EntityArn' _
Generic EntityArn' _
Show EntityArn'
Decode EntityArn'
Encode EntityArn'
```

#### `EntityArnList'`

``` purescript
newtype EntityArnList'
  = EntityArnList' (Array EntityArn')
```

##### Instances
``` purescript
Newtype EntityArnList' _
Generic EntityArnList' _
Show EntityArnList'
Decode EntityArnList'
Encode EntityArnList'
```

#### `EntityStatusCode'`

``` purescript
newtype EntityStatusCode'
  = EntityStatusCode' String
```

##### Instances
``` purescript
Newtype EntityStatusCode' _
Generic EntityStatusCode' _
Show EntityStatusCode'
Decode EntityStatusCode'
Encode EntityStatusCode'
```

#### `EntityStatusCodeList'`

``` purescript
newtype EntityStatusCodeList'
  = EntityStatusCodeList' (Array EntityStatusCode')
```

##### Instances
``` purescript
Newtype EntityStatusCodeList' _
Generic EntityStatusCodeList' _
Show EntityStatusCodeList'
Decode EntityStatusCodeList'
Encode EntityStatusCodeList'
```

#### `EntityValue'`

``` purescript
newtype EntityValue'
  = EntityValue' String
```

##### Instances
``` purescript
Newtype EntityValue' _
Generic EntityValue' _
Show EntityValue'
Decode EntityValue'
Encode EntityValue'
```

#### `EntityValueList'`

``` purescript
newtype EntityValueList'
  = EntityValueList' (Array EntityValue')
```

##### Instances
``` purescript
Newtype EntityValueList' _
Generic EntityValueList' _
Show EntityValueList'
Decode EntityValueList'
Encode EntityValueList'
```

#### `EventAggregateField'`

``` purescript
newtype EventAggregateField'
  = EventAggregateField' String
```

##### Instances
``` purescript
Newtype EventAggregateField' _
Generic EventAggregateField' _
Show EventAggregateField'
Decode EventAggregateField'
Encode EventAggregateField'
```

#### `EventArn'`

``` purescript
newtype EventArn'
  = EventArn' String
```

##### Instances
``` purescript
Newtype EventArn' _
Generic EventArn' _
Show EventArn'
Decode EventArn'
Encode EventArn'
```

#### `EventArnList'`

``` purescript
newtype EventArnList'
  = EventArnList' (Array EventArn')
```

##### Instances
``` purescript
Newtype EventArnList' _
Generic EventArnList' _
Show EventArnList'
Decode EventArnList'
Encode EventArnList'
```

#### `EventDescription'`

``` purescript
newtype EventDescription'
  = EventDescription' String
```

##### Instances
``` purescript
Newtype EventDescription' _
Generic EventDescription' _
Show EventDescription'
Decode EventDescription'
Encode EventDescription'
```

#### `EventMetadata'`

``` purescript
newtype EventMetadata'
  = EventMetadata' (StrMap MetadataValue')
```

##### Instances
``` purescript
Newtype EventMetadata' _
Generic EventMetadata' _
Show EventMetadata'
Decode EventMetadata'
Encode EventMetadata'
```

#### `EventStatusCode'`

``` purescript
newtype EventStatusCode'
  = EventStatusCode' String
```

##### Instances
``` purescript
Newtype EventStatusCode' _
Generic EventStatusCode' _
Show EventStatusCode'
Decode EventStatusCode'
Encode EventStatusCode'
```

#### `EventStatusCodeList'`

``` purescript
newtype EventStatusCodeList'
  = EventStatusCodeList' (Array EventStatusCode')
```

##### Instances
``` purescript
Newtype EventStatusCodeList' _
Generic EventStatusCodeList' _
Show EventStatusCodeList'
Decode EventStatusCodeList'
Encode EventStatusCodeList'
```

#### `EventType'`

``` purescript
newtype EventType'
  = EventType' String
```

##### Instances
``` purescript
Newtype EventType' _
Generic EventType' _
Show EventType'
Decode EventType'
Encode EventType'
```

#### `EventTypeCategory'`

``` purescript
newtype EventTypeCategory'
  = EventTypeCategory' String
```

##### Instances
``` purescript
Newtype EventTypeCategory' _
Generic EventTypeCategory' _
Show EventTypeCategory'
Decode EventTypeCategory'
Encode EventTypeCategory'
```

#### `EventTypeCategoryList'`

``` purescript
newtype EventTypeCategoryList'
  = EventTypeCategoryList' (Array EventTypeCategory')
```

##### Instances
``` purescript
Newtype EventTypeCategoryList' _
Generic EventTypeCategoryList' _
Show EventTypeCategoryList'
Decode EventTypeCategoryList'
Encode EventTypeCategoryList'
```

#### `EventTypeCode'`

``` purescript
newtype EventTypeCode'
  = EventTypeCode' String
```

##### Instances
``` purescript
Newtype EventTypeCode' _
Generic EventTypeCode' _
Show EventTypeCode'
Decode EventTypeCode'
Encode EventTypeCode'
```

#### `EventTypeList'`

``` purescript
newtype EventTypeList'
  = EventTypeList' (Array EventType')
```

##### Instances
``` purescript
Newtype EventTypeList' _
Generic EventTypeList' _
Show EventTypeList'
Decode EventTypeList'
Encode EventTypeList'
```

#### `Locale'`

``` purescript
newtype Locale'
  = Locale' String
```

##### Instances
``` purescript
Newtype Locale' _
Generic Locale' _
Show Locale'
Decode Locale'
Encode Locale'
```

#### `MaxResults'`

``` purescript
newtype MaxResults'
  = MaxResults' Int
```

##### Instances
``` purescript
Newtype MaxResults' _
Generic MaxResults' _
Show MaxResults'
Decode MaxResults'
Encode MaxResults'
```

#### `MetadataKey'`

``` purescript
newtype MetadataKey'
  = MetadataKey' String
```

##### Instances
``` purescript
Newtype MetadataKey' _
Generic MetadataKey' _
Show MetadataKey'
Decode MetadataKey'
Encode MetadataKey'
```

#### `MetadataValue'`

``` purescript
newtype MetadataValue'
  = MetadataValue' String
```

##### Instances
``` purescript
Newtype MetadataValue' _
Generic MetadataValue' _
Show MetadataValue'
Decode MetadataValue'
Encode MetadataValue'
```

#### `NextToken'`

``` purescript
newtype NextToken'
  = NextToken' String
```

##### Instances
``` purescript
Newtype NextToken' _
Generic NextToken' _
Show NextToken'
Decode NextToken'
Encode NextToken'
```

#### `Region'`

``` purescript
newtype Region'
  = Region' String
```

##### Instances
``` purescript
Newtype Region' _
Generic Region' _
Show Region'
Decode Region'
Encode Region'
```

#### `RegionList'`

``` purescript
newtype RegionList'
  = RegionList' (Array Region')
```

##### Instances
``` purescript
Newtype RegionList' _
Generic RegionList' _
Show RegionList'
Decode RegionList'
Encode RegionList'
```

#### `Service'`

``` purescript
newtype Service'
  = Service' String
```

##### Instances
``` purescript
Newtype Service' _
Generic Service' _
Show Service'
Decode Service'
Encode Service'
```

#### `ServiceList'`

``` purescript
newtype ServiceList'
  = ServiceList' (Array Service')
```

##### Instances
``` purescript
Newtype ServiceList' _
Generic ServiceList' _
Show ServiceList'
Decode ServiceList'
Encode ServiceList'
```

#### `TagFilter'`

``` purescript
newtype TagFilter'
  = TagFilter' (Array TagSet')
```

##### Instances
``` purescript
Newtype TagFilter' _
Generic TagFilter' _
Show TagFilter'
Decode TagFilter'
Encode TagFilter'
```

#### `TagKey'`

``` purescript
newtype TagKey'
  = TagKey' String
```

##### Instances
``` purescript
Newtype TagKey' _
Generic TagKey' _
Show TagKey'
Decode TagKey'
Encode TagKey'
```

#### `TagSet'`

``` purescript
newtype TagSet'
  = TagSet' (StrMap TagValue')
```

##### Instances
``` purescript
Newtype TagSet' _
Generic TagSet' _
Show TagSet'
Decode TagSet'
Encode TagSet'
```

#### `TagValue'`

``` purescript
newtype TagValue'
  = TagValue' String
```

##### Instances
``` purescript
Newtype TagValue' _
Generic TagValue' _
Show TagValue'
Decode TagValue'
Encode TagValue'
```


