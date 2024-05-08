# POL688-FINAL
I have researched if various media outlets belonging to different Arab states have varying discourses regarding the October 7 attack, due to these countries diverging 
foreign policies toward Israel. I have filtered videos published on YouTube between October 6 to October 8, using Google search engines's tools and video segments.
Excluding international media, various news agencies appeared in the results. Detecting the origins of news agencies, I realized that Saudi Arabia's media channels dominated 
the online environment. Second, I saw a few news by Al Jazeera regarding October 7. First, I picked two YouTube videos about October 7, one from Al-Hadath (Saudi Arabia) and the other from Al-Jazeera
in similar duration, view count, and like count. I extracted more than one thousand comments from both videos via YouTube data tools/Video comments section, using their URLs.  
I extracted these datasets in the form of CSV. Then, I added them to R, to clean data. I subsetted both datasets to include the first 250 comments. Since the comments were in Arabic, 
I used a deeplr package to translate them. Then I added the translated version of comments to the dataset with "mutate" code and reordered columns with select code.
I benefited from NVivo to create word clouds from comments. I expected to see a variation in two word clouds, but they were almost identical. 
Then I added both datasets to gephi, to see if there were any edges or nodes between datasets. I could not find any. 
Given that the word clouds are pretty similar, I tried to see if news agencies' frame for October 7 varies at all. I used Sonic.ai to translate YouTube videos from Arabic to English.
Since the translation does not make a lot of sense, I used Google Translate to translate the Al-Hadath videos' brief description and Al Jazaree's transcript. I realized that frames for the attack and parties
varied from Al Hadath to Al Jazeera. While Al Hadath adopts a neutral stance, Al Jazeera portrays Hamas-freedom fighters vs. Israel occupying power approach.
Finally, I manually coded 100 comments from each dataset. I concluded that although news agencies' frame towards October 7 varies, reaction toward the attack has been perceived as a "reaction against unjust occupation."
