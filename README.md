<img src="https://public.tableau.com/app/profile/sukeerthi.kandukuri/viz/CustomerSegmentationABTestingInsights/Dashboard">

# Customer Segmentation & A/B Testing

Project Summary

In this project, I analyzed customer transaction data to uncover actionable insights that could inform strategic business decisions. This project integrated customer segmentation and A/B testing to optimize marketing strategies and budget allocation. Leveraging tools such as Python, R, Excel, and Tableau, I conducted data cleaning, clustering, statistical analysis, and visualization to gain deep insights into customer behavior and purchasing patterns. Spanning the years 2020-2023, the analysis was based on a custom-designed retail dataset that simulated real-world sales dynamics, ensuring a practical and impactful approach to data-driven decision-making.

Objectives

This project aimed to:
1. Segment customers into meaningful clusters using K-means clustering for tailored marketing strategies.
2. Evaluate the impact of a 20% discount campaign through A/B testing to guide promotional strategies.
3. Calculate customer lifetime value (CLV) to assist in data-driven budget allocation.
4. Analyze seasonal and temporal trends to optimize sales strategies and inventory planning.
5. Leverage demographic data to personalize marketing efforts and improve customer retention.
   
Data Analysis and Findings

The first phase involved creating a synthetic retail sales dataset using Excel's random data generation functions, producing 10,000 transaction records. I then explored the dataset in Python to understand its structure and distribution. Following this, I focused on data cleaning and feature engineering, addressing outliers through log transformations and aggregating transaction-level data to the customer level. Key features such as Recency, Frequency, and Monetary value (RFM) were derived for customer analysis. Data was normalized and encoded to prepare for clustering.

Using the elbow method and silhouette score, I determined the optimal number of clusters for the dataset and applied K-means clustering. This process segmented customers into distinct groups based on purchasing behavior, revealing insights such as high-value customers, frequent shoppers, and low-engagement segments. These clusters provided a foundation for targeted marketing strategies.

For seasonal and temporal trends, I visualized data using Python’s Matplotlib and Seaborn libraries. This revealed significant seasonality in customer purchases, with peak activity during holiday seasons. Demographic analysis further highlighted differences in purchasing behavior across age and income groups. To evaluate the impact of discounts, I performed A/B testing with the hypothesis that a 20% discount would significantly affect customer purchases. Using a two-sample t-test in Python and R, I analyzed the results, which led to the rejection of the null hypothesis, confirming that the discount had a statistically significant impact. These insights reinforced the effectiveness of discount campaigns for specific customer segments.

Conclusion and Recommendations

This project revealed several key insights. First, customer segmentation identified high-value and high-potential customer groups, allowing for more personalized and effective marketing strategies. Second, the success of the discount campaign underscored the potential of targeted promotions to drive sales, especially during seasonal peaks. Third, CLV analysis provided actionable recommendations for budget allocation, focusing resources on retaining and nurturing high-value customers.

Based on these findings, I recommend implementing targeted marketing campaigns tailored to specific customer clusters. For example, high-value customers could be rewarded with loyalty programs, while low-engagement customers might benefit from introductory discounts. Additionally, leveraging seasonal trends can help align marketing efforts with periods of increased customer activity. Finally, continuous monitoring of CLV and churn indicators is crucial for maintaining long-term profitability. This project highlights my ability to work end-to-end on a data-driven initiative, combining analytical rigor with business strategy to deliver actionable recommendations. The use of Python, R, and Tableau ensured robust analysis and compelling visual storytelling.

