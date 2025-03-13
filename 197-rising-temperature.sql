select Weather.Id from Weather
join Weather as w 
on w.RecordDate = subdate(weather.RecordDate, 1)
where Weather.Temperature > w.Temperature