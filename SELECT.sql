SELECT 
ps.PatientId 
,ps.Hospital
,ps.AdmittedDate
,ps.DischargeDate
,DATEADD(WEEK, -2,admitteddate) AS reminderdate
,DATEDIFF(day, ps.admitteddate, ps.DischargeDate) +1 as daysinhospital
FROM PatientStay ps
WHERE ps.Hospital IN ('PRUH','Kingston')
ORDER BY ps.PatientId DESC

SELECT * from PatientStay
SELECT * From DimHospitalBad

SELECT 
ps.PatientId
,ps.AdmittedDate
,h.HospitalType
,h.Hospital
FROM PatientStay ps RIGHT JOIN DimHospitalBad h on ps.Hospital=h.Hospital



--WHERE h.Hospital is NULL
--AdmittedDate DESC
--, DischargeDate DESC
--AND Ward IN ('day surgery', 'general surgery')
--and ward like '%surgery'
--and AdmittedDate BETWEEN '2024-02-27' and '2024-03-02'

--SELECT DATEADD(WEEK, -2, '2025-11-06')

--SELECT DATEDIFF(DAY, '2025-01-14', '2025-07-22')