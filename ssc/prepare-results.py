import pandas as pd
import csv

testfile = 'within-topic/test.csv'
predfile = '/tmp/preds.txt'

test = pd.read_csv(testfile,quotechar='"',quoting=csv.QUOTE_ALL,encoding='utf-8',escapechar='\\',doublequote=False,index_col='id')
lb = pd.read_csv(predfile)

out = pd.DataFrame({ "id": test.index.values })
out = out.join(lb)

out.to_csv('/tmp/preds.csv', index=False)

