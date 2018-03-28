## Module AWS.Health.Requests

#### `describeAffectedEntities`

``` purescript
describeAffectedEntities :: forall eff. Service -> DescribeAffectedEntitiesRequest -> Aff (exception :: EXCEPTION | eff) DescribeAffectedEntitiesResponse
```

<p>Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this.</p> <p>At least one event ARN is required. Results are sorted by the <code>lastUpdatedTime</code> of the entity, starting with the most recent.</p>

#### `describeEntityAggregates`

``` purescript
describeEntityAggregates :: forall eff. Service -> DescribeEntityAggregatesRequest -> Aff (exception :: EXCEPTION | eff) DescribeEntityAggregatesResponse
```

<p>Returns the number of entities that are affected by each of the specified events. If no events are specified, the counts of all affected entities are returned.</p>

#### `describeEventAggregates`

``` purescript
describeEventAggregates :: forall eff. Service -> DescribeEventAggregatesRequest -> Aff (exception :: EXCEPTION | eff) DescribeEventAggregatesResponse
```

<p>Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.</p>

#### `describeEventDetails`

``` purescript
describeEventDetails :: forall eff. Service -> DescribeEventDetailsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEventDetailsResponse
```

<p>Returns detailed information about one or more specified events. Information includes standard event data (region, service, etc., as returned by <a>DescribeEvents</a>), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included; to retrieve those, use the <a>DescribeAffectedEntities</a> operation.</p> <p>If a specified event cannot be retrieved, an error message is returned for that event.</p>

#### `describeEventTypes`

``` purescript
describeEventTypes :: forall eff. Service -> DescribeEventTypesRequest -> Aff (exception :: EXCEPTION | eff) DescribeEventTypesResponse
```

<p>Returns the event types that meet the specified filter criteria. If no filter criteria are specified, all event types are returned, in no particular order.</p>

#### `describeEvents`

``` purescript
describeEvents :: forall eff. Service -> DescribeEventsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEventsResponse
```

<p>Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the <a>DescribeEventDetails</a> and <a>DescribeAffectedEntities</a> operations.</p> <p>If no filter criteria are specified, all events are returned. Results are sorted by <code>lastModifiedTime</code>, starting with the most recent.</p>


