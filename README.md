# MachineLearningBirdSongs
## Machine learning to identify birds by their songs

### Method used
An attempt is made at classifying birds with an **SVM**.

### Issues
- The train data has distinct ids to signify distinct species. 
I assumed the test data ids would behave the same: distinct ids for distinct species.
The description of the data says that 
> the test set lacks some species and has an overabundance of others

which means some ids from the train data should be absent while others should be duplicated several times. However all the test test ids are distinct. 

The test set is therefore *unclassified*, making accuracy evaluation impossible.

### Conclusion
Project aborted. The data set does not allow accuracy evaluation. 
