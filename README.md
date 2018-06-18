# Timer

Plano iOS Questrionnaire

iOS Preliminary Questions

1. How do you handle runtime memory and memory management?

Runtime memory is best handled by estimating and allocating the appropriate amount of memory for a function, not more, not less. If too much memory is allocated than needed, there will be a wastage of memory. However if too little memory is allocated, it cannot carry out the task.



2. How do you use auto layout for doing iPhone and iPad apps?

Auto layout is a system for allowing elements within a user interface to grow, shrink, and move depending on the size of the screen. It defines constraints and creates relationship between different views.

You can set numerical constraints (similar to padding in HTML). Either that or press control and drag to wherever appropriate, for example to the sides of the app, or to other objects.

You can also put height constraints to make a consistent height across devices.



3. Can IOS app work in background? If so how is it done?

Yes they can. There are 3 ways that iOS lets you run an app in the background. 

Firstly, apps that start a short task in the foreground can ask for time to finish that task when the app moves to the background. To do this, the method “beginBackgroundTaskWithName:expirationHandler” is used.

Secondly, apps that initiate downloads in the foreground can hand off management of those downloads to the system, thereby allowing the app to be suspended or teminated while the download continues. To do this, the “NSURLSession” object should be used to start the downloads so that the system can take control of the download process in case the app is suspended or terminated.

Thirdly, apps that need to run in the background to support specific types of tasks can declare their support for one or more background execution modes.




4. Explain how will you do image optimization?

Using [UIImage imageNamed:@"myFile.png"] image is cached in memory for faster reuse. This is good for small images used several times in your application (image background, etc). Cache is removed for non used images when memory warning is received.

Using [[UIImage alloc] initWithContentsOfFile:path] image is not cached and you can "force" release of memory by calling [image release] or setting property to nil using ARC. You have a better management of when memory is released.

Using [UIImage imageWithContentsOfFile:fullpath] is just equivalent to [[[UIImage alloc] initWithContentsOfFile:path]autorelease]




iOS Code Test

1. Write a program to show the timer on the app and this timer needs to be as persistent as possible in terms of states of the app. In the readme file, elaborate on how the timer can still be active when the app is in the background.

Under "capabilities" in xCode, by enabling "Background Mode" and enabling "Audio, Airplay, and Picture in Picture", the app is able to run in the background, using the function Timer.scheduledTimer().



2. Pls provide the answer in your github / bitbucket public repository and email the link to the email addressee by date mentioned in the email accompanied with this questionnaire.
