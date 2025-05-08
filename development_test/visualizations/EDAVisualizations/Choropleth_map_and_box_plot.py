import pandas as pd
import matplotlib.pyplot as plt
import plotly.express as px
import plotly.io as pio
import seaborn as sns

file_path = r'C:\Users\reake\OneDrive\Documents\rea new\Data science capstone\week 3\June_MERGED_SDOH_PLUS_UTIL.xlsx'
df = pd.read_excel(file_path)


print(df.head())


###################boxplot by region###################################################

#set x andy axis
plt.figure(figsize=(10, 6))
sns.boxplot(x="REGION", y="HOSP_FIPS_UTIL", data=df, palette="pastel")
#update formating
plt.title("Bed Utilization by Region", fontsize=16, weight='bold')
plt.xlabel("Region", fontsize=14)
plt.ylabel("Bed Utilization Ratio", fontsize=14)
plt.xticks(rotation=45)
plt.grid(True, axis='y', linestyle='--', alpha=0.7)

#show visual
plt.tight_layout()
plt.show()



###################################choropleth map##########################################


# Ensure FIPS code is string and properly formatted
df["COUNTYFIPS"] = df["COUNTYFIPS"].astype(str).str.zfill(5)

# Drop rows where utilization is missing
df_clean = df[df["HOSP_FIPS_UTIL"].notna()]

# Custom yellow to red scale (0 = yellow, 1 = red)
custom_colorscale = [
    [0.0, "yellow"],
    [1.0, "red"]
]

fig = px.choropleth(
    df_clean,
    geojson="https://raw.githubusercontent.com/plotly/datasets/master/geojson-counties-fips.json",
    locations="COUNTYFIPS",
    color="HOSP_FIPS_UTIL",
    color_continuous_scale=custom_colorscale,
    scope="usa",
    labels={'HOSP_FIPS_UTIL': 'Hospital Utilization'}
)

# Fit and clean up the map
fig.update_geos(fitbounds="locations", visible=False)

#customize and add title
fig.update_layout(
    title={
        'text': "Hospital Utilization by County",
        'y': 0.95,
        'x': 0.5,
        'xanchor': 'center',
        'yanchor': 'top',
        'font': {'size': 24}
    }
)

#open plot in browser
pio.renderers.default = 'browser'
fig.show()
