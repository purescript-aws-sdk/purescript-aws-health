
module AWS.Health.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Health as Health
import AWS.Health.Types as HealthTypes


-- | <p>Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this.</p> <p>At least one event ARN is required. Results are sorted by the <code>lastUpdatedTime</code> of the entity, starting with the most recent.</p>
describeAffectedEntities :: forall eff. Health.Service -> HealthTypes.DescribeAffectedEntitiesRequest -> Aff (exception :: EXCEPTION | eff) HealthTypes.DescribeAffectedEntitiesResponse
describeAffectedEntities (Health.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAffectedEntities"


-- | <p>Returns the number of entities that are affected by each of the specified events. If no events are specified, the counts of all affected entities are returned.</p>
describeEntityAggregates :: forall eff. Health.Service -> HealthTypes.DescribeEntityAggregatesRequest -> Aff (exception :: EXCEPTION | eff) HealthTypes.DescribeEntityAggregatesResponse
describeEntityAggregates (Health.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEntityAggregates"


-- | <p>Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.</p>
describeEventAggregates :: forall eff. Health.Service -> HealthTypes.DescribeEventAggregatesRequest -> Aff (exception :: EXCEPTION | eff) HealthTypes.DescribeEventAggregatesResponse
describeEventAggregates (Health.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEventAggregates"


-- | <p>Returns detailed information about one or more specified events. Information includes standard event data (region, service, etc., as returned by <a>DescribeEvents</a>), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included; to retrieve those, use the <a>DescribeAffectedEntities</a> operation.</p> <p>If a specified event cannot be retrieved, an error message is returned for that event.</p>
describeEventDetails :: forall eff. Health.Service -> HealthTypes.DescribeEventDetailsRequest -> Aff (exception :: EXCEPTION | eff) HealthTypes.DescribeEventDetailsResponse
describeEventDetails (Health.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEventDetails"


-- | <p>Returns the event types that meet the specified filter criteria. If no filter criteria are specified, all event types are returned, in no particular order.</p>
describeEventTypes :: forall eff. Health.Service -> HealthTypes.DescribeEventTypesRequest -> Aff (exception :: EXCEPTION | eff) HealthTypes.DescribeEventTypesResponse
describeEventTypes (Health.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEventTypes"


-- | <p>Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the <a>DescribeEventDetails</a> and <a>DescribeAffectedEntities</a> operations.</p> <p>If no filter criteria are specified, all events are returned. Results are sorted by <code>lastModifiedTime</code>, starting with the most recent.</p>
describeEvents :: forall eff. Health.Service -> HealthTypes.DescribeEventsRequest -> Aff (exception :: EXCEPTION | eff) HealthTypes.DescribeEventsResponse
describeEvents (Health.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEvents"
