Billboard Top 10

1. start with "billboard" text
2. Display top 10 songs with artists in numbered list. 
3. Select song to show previous position with text stating "rising to" or "falling to" 
4. if none, show "entered at" this week. 
5. Show number of weeks on the chart. 


Data to be shown:
1. Title
2. Artist
3. Rank
4. Duration on charts
5. Previous Position
6. Rise or Fall
7. New or Old

Samples of text 
+delta  --  With #duration weeks on the Chart #artist rises from #Last, to Number #rank With #title
+delta == #1 -- Topping the Chart this week with the number 1 song is #title, by #artist
last == 0 && number 1  -- Entering the chart for the first week, #artist busts in at Number 1 with #title
-delta  --  Peaking at #peak, #artist falls to #rank this week with #title
-delta  --  Falling #delta spot(s) after #duration weeks on the chart, #artist Comes in this week at Number #rank with #title 
no change -- holding onto #number after #duration consecutive weeks on the chart, #artist brings you #title
New this week, #artist enters at number #rank with #title. 


Samples 2

if #rank == 1 && delta > 0
  Climbing to the top this week, #artist[0] rises to the Nummber #rank song in the country with #title, #artist[1]
if #rank == 1 && #trend == steady
  Clinging to number #rank again this week, #artist 
if #trend == new 1
  Coming in this week at #rank, #title by #artist.join, for the first time on the Charts
if #trend == new 2
  Entering the charts #artist[0] debuts and number #rank, with #title, #artist[1]

if  #delta.abs() == 1 
  After #duration weeks on the chart #artist[0] #trend.gsub to Number #rank this week with #title, #artist[1]
if  #delta.abs() == 1
 #trend, #delta spot this week to Number #rank in the countdown, #artist[0], brings you #title #artist[1]

if #peak < #rank && #trend == Falling
  Peaking all the way at #peak. #artist[0]'s song #title, #artist[1] falls to number #rank this week 

if #delta > 0 && #peak == #rank
  Climbing the charts to Number #rank is #title, by #artist.join
if #delta > 0 && #peak == #rank
  Reaching their peak so far, this week, #artist[0] climbs up to number #rank with #title, #artist[1]

if #delta > 0 && #peak < #rank, 1
  Climbing their way back up the charts #artist[0]'s track, #title, comes in at Number #rank this week after being Number #peak. 
if #delta > 0 && #peak < #rank, 2
  After Falling from Number #peak #artist[0] climbs back up to Number #rank this week with #title, #artist[1]

if #delta == 0 && #trend == steady
  Holding strong this week #artist[0] holds on to the Number #rank spot again with #title, #artist[1]
if #delta == 0 && #trend == steady
  Remaining at Number #rank again this week is #artist[0]'s track #title
