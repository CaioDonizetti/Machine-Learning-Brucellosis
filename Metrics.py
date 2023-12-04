import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from imblearn.metrics import geometric_mean_score 
from imblearn.metrics import make_index_balanced_accuracy
from sklearn.metrics import precision_score
from sklearn.metrics import recall_score
from sklearn.metrics import confusion_matrix
from sklearn.metrics import f1_score
from sklearn.metrics import fbeta_score

def cacule_metrics(y_true,y_pred):
    tn, fp, fn, tp = confusion_matrix(y_true, y_pred).ravel()
    
    sensitivity = tp / (tp+fn)

    specificity = tn / (tn+fp)
    
    precision = precision_score(y_true, y_pred)

    f1score = f1_score(y_true, y_pred)

    f2score = fbeta_score(y_true, y_pred, beta=2)

    gmean_mba = make_index_balanced_accuracy(alpha=0.1, squared=True)(geometric_mean_score)

    gmean_mba = gmean_mba(y_true, y_pred)

    gmean = geometric_mean_score(y_true, y_pred)

    #return {sensitivity,
    #    specificity,
    #    precision,
    #    f1score,
    #    f2score,
    #    gmean_mba,
    #    gmean}
    
    metrics = {'sensitivity':[sensitivity],
    'specificity':[specificity],
    'precision':[precision],
    'f1score':[f1score],
    'f2score':[f2score],
    'gmean_mba':[gmean_mba],
    'gmean':[gmean]}
    
    return pd.DataFrame(data=metrics)


def save_metrics(data,name_file):
    data.to_csv("../Resultados/"+name_file, encoding = 'utf-8', index = False)



    
