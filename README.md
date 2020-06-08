# MachineLearningBirdSongs
## Machine learning to identify birds by their songs

### Glossary
SVM
: Support Vector Machine. An algorithm which optimizes the line between data classes so that it maximizes the distance of the data points to the line.  

Train set
: The data set used for training the algorithm.  

Test set 
: The data set used for testing the algorithm. It is distinct from the train set.  

### Method used
An attempt is made at classifying birds with an **SVM**.

### Parameters used
The C parameter was varied for several pairs of features in order to see how good each boundary was at separating species.

The following table shows the features and C parameters used, as well as the weights yielded.

|features|C|weights|
|-------|----|------------|
|2 & 3|1| -0.75022 and -1.56886|
|2 & 3|10| 2.2776 and -5.3091|
|2 & 3|100|3.1330 and -6.6089|

### Issues
- The train data has distinct ids to signify distinct species. 
I assumed the test data ids would behave the same: distinct ids for distinct species.
The description of the data says that 
> the test set lacks some species and has an overabundance of others

which means some ids from the train data should be absent while others should be duplicated several times. However all the test test ids are distinct. 

The test set is therefore *unclassified*, making accuracy evaluation impossible.

### Conclusion
Project aborted. The data set does not allow accuracy evaluation. 

### Dataset
[Birds' Songs Dataset from Kaggle] https://www.kaggle.com/fleanend/birds-songs-numeric-dataset
