# 3.2 Exercise 2

Assignment: ASSIGNMENT 3.2.2  
Name: Rahman, Jahedur  
Date: 2021-12-15  


i.    What are the elements in your data (including the categories and data types)?

      The categories are Id, Id2, Geography, PopGroupID, RacesReported, HSDegree, BachDegree
      The data types are chr, int, and num.


ii.   Please provide the output from the following functions: str(); nrow(); ncol()  
      ![image](https://user-images.githubusercontent.com/89809634/146693222-8cc69907-c7f9-48a2-a29e-7eccd9cf5210.png)


iii.  Create a Histogram of the HSDegree variable using the ggplot2 package.  
    1. Set a bin size for the Histogram.  
    2. Include a Title and appropriate X/Y axis labels on your Histogram Plot.  
      ![image](https://user-images.githubusercontent.com/89809634/146693316-28446da1-6f19-4801-ad3f-300c5ab9aff8.png)



iv.   Answer the following questions based on the Histogram produced:

    1. Based on what you see in this histogram, is the data distribution unimodal?
        The data distribution is unimodal.

    2. Is it approximately symmetrical?
        No, it is not approximately symmetrical.

    3. Is it approximately bell-shaped?
        No, it is not approximately bell-shaped.

    4. Is it approximately normal?
        No, it is not approximately normal

    5. If not normal, is the distribution skewed? If so, in which direction?
        It is left/negative skewed.

    6. Include a normal curve to the Histogram that you plotted.  
![image](https://user-images.githubusercontent.com/89809634/146693423-95fa06c4-0f66-43fb-8921-a9aff7f9bf4f.png)

    7. Explain whether a normal distribution can accurately be used as a model for this data.
        A normal distribution can be used as a model for this data but it is not very accurate. 
        This is because the peak of the curve is not accurately showing the exact point of the peak of the histogram.


v.    Create a Probability Plot of the HSDegree variable.  
      ![image](https://user-images.githubusercontent.com/89809634/146693464-6dc8c0a7-fc4c-4e6c-9d62-327f15d7e49e.png)


vi.   Answer the following questions based on the Probability Plot:

    1. Based on what you see in this probability plot, is the distribution approximately normal? Explain how you know.
        No, the distribution is not approximately normal because the points are not close to the "ideal" diagonal line.

    2. If not normal, is the distribution skewed? If so, in which direction? Explain how you know.
        The distribution is skewed. It is left/negative skewed because the curve is located on the top left.


vii.  Now that you have looked at this data visually for normality, you will now quantify normality with numbers using the stat.desc() function. Include a screen capture of the results produced.  
      ![Capture](https://user-images.githubusercontent.com/89809634/146693488-b124cef1-6ccc-4fa8-af8a-94201a8c54ba.PNG)


viii.  In several sentences provide an explanation of the result produced for skew, kurtosis, and z-scores. In addition, explain how a change in the sample size may change your explanation?

    The skew is a negative number. Just like we have seen with the histogram and probability plot, we see the value for skew also negative. 
    The kurtosis is positive which means that there is a fat tailed distribution. This also means that we can more commonly see outcomes that 
    are extreme compared to outcomes of a standard normal distribution. The z-score for skew is 0.52 and the z-score for kurtosis is 0.73. If 
    the sample size were to change it would change the standard deviation which would affect the skew, kurtosis, and z-scores.
