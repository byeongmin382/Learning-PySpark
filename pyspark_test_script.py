from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("TestApp").getOrCreate()
df = spark.createDataFrame([(1, "apple"), (2, "banana")], ["id", "fruit"])
df.show()
