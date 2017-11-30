A Gathering of Analysis Tools from Hoskins lab Associates (AGATHA)

1). Piloting Histogram (PH): PH software plots a histogram of the event lengths and
fits the histogram to an exponential distribution function. It allows the user to select
various methods to calculate the number of bins in the histogram, and single, bi and tri
exponential distribution functions are available for fitting. Bootstrapping analysis is
performed to obtain accurate fitting parameters.

2). Two Color Plot: This program plots the fluorescence intensities versus frame or
time for two interval files for every matched AOI. It saves the plots (in the output
directory) as AOI number.fig files.

3). Counting Photobleaching Steps: This program detects stepwise changes in
single-molecule TIRF experiments based on the Pottslab toolbox
(https://github.com/mstorath/Pottslab).

4). Sequential Arrival: This program classifies events that start and end sequentially.
The events are divided into seven different categories depending upon their arrival and
departure with respect to each other.

5). Simultaneous Arrival: This program classifies events that occur simultaneously
and end either simultaneously or sequentially. The events are divided into five different
categories depending upon their departure with respect to each other.

6). Short Counter: This program counts short events that occurs prior to a long binding
event. For an AOI, it first classifies all events as long or short using the user input
values. For every long event, it counts all the short events in front of it


Installation
1-Unzip the compressed folders(CPS1.zip,PH.zip, Plottwo.zip, Sequentialarrival.zip, Shortcounter.zip, Simultaneousarrival.zip)  
2-Put the unzip folders  (CPS1, PH, Plottwo, Sequentialarrival, Shortcounter, Simultaneousarrival) in your main folder 
3- Run the AGATHA.m
