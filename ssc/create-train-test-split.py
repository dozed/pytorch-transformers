import pandas as pd
import csv
from sklearn.model_selection import train_test_split

data_cross_path = '/data/argmining19-same-side-classification/data/same-side-classification/cross-topic/{}.csv'
data_within_path = '/data/argmining19-same-side-classification/data/same-side-classification/within-topic/{}.csv'

cross_traindev_df = pd.read_csv(data_cross_path.format('training'), quotechar='"',quoting=csv.QUOTE_ALL,encoding='utf-8',escapechar='\\',doublequote=False,index_col='id')
cross_test_df =  pd.read_csv(data_cross_path.format('test'), quotechar='"',quoting=csv.QUOTE_ALL,encoding='utf-8',escapechar='\\',doublequote=False,index_col='id')

within_traindev_df =  pd.read_csv(data_within_path.format('training'),quotechar='"',quoting=csv.QUOTE_ALL,encoding='utf-8',escapechar='\\',doublequote=False,index_col='id')
within_test_df =  pd.read_csv(data_within_path.format('test'),  quotechar='"',quoting=csv.QUOTE_ALL,encoding='utf-8',escapechar='\\',doublequote=False,index_col='id')

train, test = train_test_split(within_traindev_df, test_size=0.3, shuffle=True)

train.to_csv('/data/argmining19-same-side-classification/data/same-side-classification/within-topic2/training.csv')
test.to_csv('/data/argmining19-same-side-classification/data/same-side-classification/within-topic2/test.csv')
