# Exploring Star Wars Surveys

    Owner: Jason Lee

While waiting for Star Wars: The Force Awakens to come out, the team at FiveThirtyEight became interested in answering some questions about Star Wars fans. In particular, they wondered: does the rest of America realize that “The Empire Strikes Back” is clearly the best of the bunch?

The team needed to collect data addressing this question. To do this, they surveyed Star Wars fans using the online tool SurveyMonkey. They received 835 total responses, which you download from their [GitHub repository](https://github.com/fivethirtyeight/data/tree/master/star-wars-survey).

We need to specify an encoding because the data set has some characters that aren't in Python's default utf-8 encoding. You can read more about character encodings on developer Joel Spolsky's blog.

The data has several columns, including:

- RespondentID - An anonymized ID for the respondent (person taking the survey)
- Gender - The respondent's gender
- Age - The respondent's age
- Household Income - The respondent's income
- Education - The respondent's education level
- Location (Census Region) - The respondent's location
- Have you seen any of the 6 films in the Star Wars franchise? - Has a Yes or No response
- Do you consider yourself to be a fan of the Star Wars film franchise? - Has a Yes or No response

There are several other columns containing answers to questions about the Star Wars movies. For some questions, the respondent had to check one or more boxes. This type of data is difficult to represent in columnar format. As a result, this data set needs a lot of cleaning.

## Explore the highest ranked movies from Episode 1 - 6
Now that we've cleaned up the ranking columns, we can find the highest-ranked movie more quickly. To do this, take the mean of each of the ranking columns using the pandas.DataFrame.mean() method on dataframes.

![](https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Star%20Wars/ranking.png)

Since we are taking the `mean` result the number outputted in each rank would represent the episode number. Looking at the result we can see that the original Star Wars episode which would were 4 - 6 had better ranks. (Lower ranks mean better).

It is understandable that the originals were more favored due to the hype they received over the years. It is well known that the newer version didn't live up to the bill. We can see the mean values for the ranks 4 to 6 are low. The low value tells us those ranks have low means and therefore represent the Episode between 1-3 possibly.


## Demographic Trends
We know which movies the survey population as a whole has ranked the highest. Now let's examine how certain segments of the survey population responded. There are several columns that segment our data into two groups. Let's explore the genders.

- Gender - Male or Female

![](https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Star%20Wars/subplot1.png)
If we compare how the rankings and views look between genders we can find some interesting insights. For females, it looks like their number one rank film has a lower mean value to the males. The males has an approximately mean value of 4, where as the females is 3.5, meaning females might have enjoyed the remake episodes (Episodes 1, 2 and 3).

Looking at the total views, we see looking a the y-axis range, females watched less than the males. They both have a similar distribution in viewer ship but overall females have less. Episode 3 is again the least watched movie out of the 6.

## Characters
Like any big movie franchise, the actor and actresses play a big role in defining whether or not a viewer enjoyed the movie. In this dataset there are some questions relating to individual characters. Before we explore this information we will need to clean up some of the questions and answers.

### Favorite Characters
![](https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Star%20Wars/favorite%20characters.png)

We see that Han Solo, Yoda and Obi Wan were the most liked characters based on the percentage of people liking them per character.

### Least Favorite Characters

![](https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Star%20Wars/least%20favorite%20characters.png)

If you have watched the movies and spoken to your friends, I think it is safe to say that Jar Jar Binnks was expected to be the least liked character. The rest of the characters that are least liked are the bad guys. Darth Vader, Palpatine, Boba fett and Anakin.

One can argue that Darth Vader is a surprised inclusion so high up for being unfavorable. He is notorious for his evil role, and will go down as one of the most reputable bad guys in cinema history. However he did save Luke in the end, so despite the bad in him he could have scored some points on the favored side. (Spoiler for those of you who haven't seen it - Sorry).

## The Expanded Universe
Star Wars has been expanded to media other than the original films. This spin-off material is licensed and moderated by Lucasfilm, though during his involvement with the franchise George Lucas reserved the right to both draw from and contradict it in his own works.

There are 2 questions focused on asking questions Expanded Universe. Let's explore.

![](https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Star%20Wars/subplot2.png)

Looking at the graphs above we can see a couple interesting insights.

   - People who aren't familiar of the Expanded Universe seemed to have a lower mean score for their number 1 ranked film. This could mean that they were interested in the remake versions released in the 2000s. Whereas the responders who are aware of the expanded universe have a clear distinction that their top 3 rank films have high movie scores meaning Episode 4,5 or 6.
   - Surprising to see the non expanded universe users have watched Episode 1 more than Episode 4. That could mean that most of them were not familiar with the franchise, or did not have a strong interest to watch the older versions.
   
## Star Trek Fans
In the survey there is one interesting question that asks responders if they are a fan of the Star Trek franchise. The Star Trek franchise has their unique fan base, but follows a similar sci-fi fantasy to Star Wars. It will be interesting to see the reviews of fans who enjoy Star Trek.

Looking at the results 641 responders said they are NOT fans of Star Trek, in comparison to 427 said YES they are fans. Not too much disparity in the split with more fans not being interest in the Star Trek franchise. Let's explore the ratings.

![](https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Star%20Wars/startrek_fans.png)

We can see that the graph on the left which are the Star Trek fans have more total views on every episode in comparison to the non Star Trek fans. There likely is a strong relationship if someone enjoys both Star Wars and Star trek they are generally big fans of the sci-fi industry. It would be interesting to explore how other franchises such as Lord of the Rings, Avengers, or Harry Potter could have an effect on Star Wars fans. If there is a relationship outside the Sci-fi universe it could mean that viewers are simplify fans of main stream blockbuster hits.


   
