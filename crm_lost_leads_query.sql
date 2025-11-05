-- Query to retrieve lost leads with completed diagnostic assessments
-- Filtered by date range: January 1, 2025 to November 5, 2025

SELECT
    l.id AS lead_id,
    l.name AS lead_name,
    sub_status.write_date as date,
    sub_status.name AS sub_status,
    drop_sub_status.name AS drop_sub_status
FROM crm_lead l
    LEFT JOIN crm_sub_status sub_status ON sub_status.id = l.sub_status_id
    LEFT JOIN crm_sub_status drop_sub_status ON drop_sub_status.id = l.drop_out_sub_status_id
WHERE l.sub_stage = 'lost' -- Closed (without subscribing)
    AND EXISTS (
        SELECT 1
        FROM diagnostic_assessment da
        WHERE da.opportunity_id = l.id
        AND da.state = 'complete'
    ) -- have DA completed
    AND sub_status.write_date >= '2025-01-01' -- Start date: January 1, 2025
    AND sub_status.write_date <= '2025-11-05' -- End date: November 5, 2025
LIMIT 100;
