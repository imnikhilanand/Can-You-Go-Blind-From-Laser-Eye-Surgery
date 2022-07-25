# Can-You-Go-Blind-From-Laser-Eye-Surgery
Survival Analysis on the patients from a trial of laser coagulation for the treatment of diabetic retinopathy. Survival times in this dataset are actual time to blindness in months, minus the minimum possible time to event (6.5 months).

**Experiment Details**

The 197 patients in this dataset were a 50% random sample of the patients with "high-risk" diabetic
retinopathy as defined by the Diabetic Retinopathy Study (DRS). Each patient had one eye randomized to laser treatment and the other eye received no treatment. For each eye, the event of interest was the time from initiation of treatment to the time when visual acuity dropped below 5/200 two visits in a row. Thus there is a built-in lag time of approximately 6 months (visits were every 3 months). Survival times in this dataset are therefore the actual time to blindness in months, minus the minimum possible time to event (6.5 months). Censoring was caused by death, dropout, or end of the study.

**Dataset description**

A data frame with 394 observations on the following 8 variables.

id -> subject id<br>
laser -> laser type: xenon or argon<br>
age -> age at diagnosis<br>
eye -> a factor with levels of left right<br>
trt -> treatment: 0 = no treatment, 1= laser<br>
risk -> risk group of 6-12<br>
time -> time to event or last follow-up<br>
status -> status of 0= censored or 1 = visual loss<br>



