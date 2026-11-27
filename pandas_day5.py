
import pandas as pd
import matplotlib.pyplot as plt

# 1. Load dataset
url = "https://raw.githubusercontent.com/mwaskom/seaborn-data/master/tips.csv"

df = pd.read_csv(url)

print("Dataset loaded successfully")

# 2. Display first five rows
print("\nFirst five rows:")
print(df.head())

# 3. Dataset information
print("\nDataset information:")
df.info()

# 4. Statistical summary
print("\nStatistical summary:")
print(df.describe())

# 5. Count values
print("\nDay counts:")
print(df["day"].value_counts())

# 6. Select columns
print("\nSelected columns:")
print(df[["total_bill", "tip", "day"]].head())

# 7. Filter rows
print("\nBills greater than 20:")
print(df[df["total_bill"] > 20])

# 8. Check missing values
print("\nMissing values:")
print(df.isnull().sum())

# 9. Handle missing values
df["total_bill"] = df["total_bill"].fillna(
    df["total_bill"].mean()
)

# 10. GroupBy
print("\nTotal bill by day:")
daily_sales = df.groupby("day")["total_bill"].sum()
print(daily_sales)

# 11. Create chart
daily_sales.plot(kind="bar")
plt.title("Total Bills by Day")
plt.xlabel("Day")
plt.ylabel("Total Bill")
plt.tight_layout()
plt.savefig("daily_sales.png")
plt.show()

# 12. Export cleaned data
df.to_csv("cleaned_tips.csv", index=False)

print("\nCleaned CSV exported successfully")
