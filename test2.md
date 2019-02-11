# Introduction

\IEEEPARstart{T}{his} report is an exploration on some techniques in
supervised learning. Five different algorithms will be compared across
two different data sets.

# Method
<!--
![Learning Curve for DT over Credit Default](images/DT_credit_default_LC.png){#fig:DT_credit_default_LC.png}
![DT_credit_default_DT__max_depth_MC.png](images/DT_credit_default_DT__max_depth_MC.png){#fig:DT_credit_default_DT__max_depth_MC.png}
![DT_credit_default_TC.png](images/DT_credit_default_TC.png){#fig:DT_credit_default_TC.png}
![DT_spam_data_LC.png](images/DT_spam_data_LC.png){#fig:DT_spam_data_LC.png}
![DT_spam_data_DT__max_depth_MC.png](images/DT_spam_data_DT__max_depth_MC.png){#fig:DT_spam_data_DT__max_depth_MC.png}
![DT_spam_data_TC.png](images/DT_spam_data_TC.png){#fig:DT_spam_data_TC.png}
![ANN_credit_default_ITER_LC.png](images/ANN_credit_default_ITER_LC.png){#fig:ANN_credit_default_ITER_LC.png}
![ANN_credit_default_LC.png](images/ANN_credit_default_LC.png){#fig:ANN_credit_default_LC.png}
![ANN_credit_default_MLP__alpha_MC.png](images/ANN_credit_default_MLP__alpha_MC.png){#fig:ANN_credit_default_MLP__alpha_MC.png}
![ANN_credit_default_TC.png](images/ANN_credit_default_TC.png){#fig:ANN_credit_default_TC.png}
![ANN_spam_data_ITER_LC.png](images/ANN_spam_data_ITER_LC.png){#fig:ANN_spam_data_ITER_LC.png}
![ANN_spam_data_LC.png](images/ANN_spam_data_LC.png){#fig:ANN_spam_data_LC.png}
![ANN_spam_data_MLP__alpha_MC.png](images/ANN_spam_data_MLP__alpha_MC.png){#fig:ANN_spam_data_MLP__alpha_MC.png}
![ANN_spam_data_TC.png](images/ANN_spam_data_TC.png){#fig:ANN_spam_data_TC.png}
![Boost_credit_default_ITER_LC.png](images/Boost_credit_default_ITER_LC.png){#fig:Boost_credit_default_ITER_LC.png}
![Boost_credit_default_LC.png](images/Boost_credit_default_LC.png){#fig:Boost_credit_default_LC.png}
![Boost_credit_default_Boost__learning_rate_MC.png](images/Boost_credit_default_Boost__learning_rate_MC.png){#fig:Boost_credit_default_Boost__learning_rate_MC.png}
![Boost_credit_default_TC.png](images/Boost_credit_default_TC.png){#fig:Boost_credit_default_TC.png}
![Boost_spam_data_ITER_LC.png](images/Boost_spam_data_ITER_LC.png){#fig:Boost_spam_data_ITER_LC.png}
![Boost_spam_data_LC.png](images/Boost_spam_data_LC.png){#fig:Boost_spam_data_LC.png}
![Boost_spam_data_Boost__learning_rate_MC.png](images/Boost_spam_data_Boost__learning_rate_MC.png){#fig:Boost_spam_data_Boost__learning_rate_MC.png}
![Boost_spam_data_TC.png](images/Boost_spam_data_TC.png){#fig:Boost_spam_data_TC.png}
![SVMLinear_credit_default_ITER_LC.png](images/SVMLinear_credit_default_ITER_LC.png){#fig:SVMLinear_credit_default_ITER_LC.png}
![SVMLinear_credit_default_LC.png](images/SVMLinear_credit_default_LC.png){#fig:SVMLinear_credit_default_LC.png}
![SVMLinear_credit_default_SVM__C_MC.png](images/SVMLinear_credit_default_SVM__C_MC.png){#fig:SVMLinear_credit_default_SVM__C_MC.png}
![SVMLinear_credit_default_TC.png](images/SVMLinear_credit_default_TC.png){#fig:SVMLinear_credit_default_TC.png}
![SVMLinear_spam_data_ITER_LC.png](images/SVMLinear_spam_data_ITER_LC.png){#fig:SVMLinear_spam_data_ITER_LC.png}
![SVMLinear_spam_data_LC.png](images/SVMLinear_spam_data_LC.png){#fig:SVMLinear_spam_data_LC.png}
![SVMLinear_spam_data_SVM__C_MC.png](images/SVMLinear_spam_data_SVM__C_MC.png){#fig:SVMLinear_spam_data_SVM__C_MC.png}
![SVMLinear_spam_data_TC.png](images/SVMLinear_spam_data_TC.png){#fig:SVMLinear_spam_data_TC.png}
![SVM_RBF_credit_default_ITER_LC.png](images/SVM_RBF_credit_default_ITER_LC.png){#fig:SVM_RBF_credit_default_ITER_LC.png}
![SVM_RBF_credit_default_LC.png](images/SVM_RBF_credit_default_LC.png){#fig:SVM_RBF_credit_default_LC.png}
![SVM_RBF_credit_default_SVM__C_MC.png](images/SVM_RBF_credit_default_SVM__C_MC.png){#fig:SVM_RBF_credit_default_SVM__C_MC.png}
![SVM_RBF_credit_default_TC.png](images/SVM_RBF_credit_default_TC.png){#fig:SVM_RBF_credit_default_TC.png}
![SVM_RBF_spam_data_ITER_LC.png](images/SVM_RBF_spam_data_ITER_LC.png){#fig:SVM_RBF_spam_data_ITER_LC.png}
![SVM_RBF_spam_data_LC.png](images/SVM_RBF_spam_data_LC.png){#fig:SVM_RBF_spam_data_LC.png}
![SVM_RBF_spam_data_SVM__C_MC.png](images/SVM_RBF_spam_data_SVM__C_MC.png){#fig:SVM_RBF_spam_data_SVM__C_MC.png}
![SVM_RBF_spam_data_TC.png](images/SVM_RBF_spam_data_TC.png){#fig:SVM_RBF_spam_data_TC.png}
![KNN_credit_default_LC.png](images/KNN_credit_default_LC.png){#fig:KNN_credit_default_LC.png}
![KNN_credit_default_KNN__n_neighbors_MC.png](images/KNN_credit_default_KNN__n_neighbors_MC.png){#fig:KNN_credit_default_KNN__n_neighbors_MC.png}
![KNN_credit_default_TC.png](images/KNN_credit_default_TC.png){#fig:KNN_credit_default_TC.png}
![KNN_spam_data_LC.png](images/KNN_spam_data_LC.png){#fig:KNN_spam_data_LC.png}
![KNN_spam_data_KNN__n_neighbors_MC.png](images/KNN_spam_data_KNN__n_neighbors_MC.png){#fig:KNN_spam_data_KNN__n_neighbors_MC.png}
![KNN_spam_data_TC.png](images/KNN_spam_data_TC.png){#fig:KNN_spam_data_TC.png}
-->

```{#lst:code .text caption="Confusion Matrix for DT over Credit Default"}
  ------|---------|----------|---------|------
  Actual|Predicted|Normalized| Accuracy|Fscore
        |   0    1|    0    1|     0.78|  0.54
       0|3904  769| 0.84 0.16|Precision|Recall
       1| 557  770| 0.42 0.58|     0.50|  0.58
  ------|---------|----------|---------|------
```

```{#lst:code .text caption="Confusion Matrix for ANN over Credit Default"}
  ------ --------- ----------|--------- ------
  Actual Predicted Normalized| Accuracy Fscore
            0    1     0    1|     0.81   0.50
       0 4337  336  0.93 0.07|Precision Recall
       1  777  550  0.59 0.41|     0.62   0.41
  ------ --------- ----------|--------- ------
```

```{#lst:code .text caption="Confusion Matrix for Boost over Credit Default"}
  ------ --------- ----------|--------- ------
  Actual Predicted Normalized| Accuracy Fscore
            0    1     0    1|     0.78   0.55
       0  3859 814  0.83 0.17|Precision Recall
       1   522 805  0.39 0.61|     0.50   0.61
  ------ --------- ----------|--------- ------
```

```{#lst:code .text caption="Confusion Matrix for SVMLinear over Credit Default"}
  ------ --------- ----------|--------- ------
  Actual Predicted Normalized| Accuracy Fscore
            0    1     0    1|     0.70   0.48
       0  3322 1351 0.71 0.29|Precision Recall
       1   472  855 0.36 0.64|     0.39   0.64
  ------ --------- ----------|--------- ------
```


```{#lst:code .text caption="Confusion Matrix for SVM RBF over Credit Default"}
  ------ --------- ----------|--------- ------
  Actual Predicted Normalized| Accuracy Fscore
            0    1     0    1|     0.33   0.38
       0  773 3900  0.17 0.83|Precision Recall
       1  105 1222  0.08 0.92|     0.24   0.92
  ------ --------- ----------|--------- ------
```


```{#lst:code .text caption="Confusion Matrix for KNN over Credit Default"}
  ------ --------- ----------|--------- ------
  Actual Predicted Normalized| Accuracy Fscore
            0    1     0    1|     0.81   0.43
       0  4424 249  0.95 0.05|Precision Recall
       1   898 429  0.68 0.32|     0.63   0.32
  ------ --------- ----------|--------- ------
```

# Conclusion

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At
vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,
no sea takimata sanctus est Lorem ipsum dolor sit amet.


```{#lst:code .text caption="Confusion Matrix for DT over Spam"}
  ------ --------- ----------|--------- ------
  Actual Predicted Normalized| Accuracy Fscore
            0    1     0    1|     0.93   0.91
       0  528   30  0.95 0.05|Precision Recall
       1   32  331  0.09 0.91|     0.92   0.91
  ------ --------- ----------|--------- ------
```


```{#lst:code .text caption="Confusion Matrix for ANN over Spam"}
  ------ --------- ----------|--------- ------
  Actual Predicted Normalized| Accuracy Fscore
            0    1     0    1|     0.93   0.91
       0  539   19  0.97 0.03|Precision Recall
       1   43  320  0.12 0.88|     0.94   0.88
  ------ --------- ----------|--------- ------
```


```{#lst:code .text caption="Confusion Matrix for Boost over Spam"}
  ------ --------- ----------|--------- ------
  Actual Predicted Normalized| Accuracy Fscore
            0    1     0    1|     0.95   0.94
       0  539  19   0.97 0.03|Precision Recall
       1   27 336   0.07 0.93|     0.95   0.93
  ------ --------- ----------|--------- ------
```


```{#lst:code .text caption="Confusion Matrix for SVMLinear over Spam"}
  ------ --------- ----------|--------- ------
  Actual Predicted Normalized| Accuracy Fscore
            0    1     0    1|     0.93   0.91
       0  518  40   0.93 0.07|Precision Recall
       1   29 334   0.08 0.92|     0.89   0.92
  ------ --------- ----------|--------- ------
```


```{#lst:code .text caption="Confusion Matrix for SVM RBF over Spam"}
  ------ --------- ----------|--------- ------
  Actual Predicted Normalized| Accuracy Fscore
            0    1     0    1|     0.93   0.91
       0  518  40   0.93 0.07|Precision Recall
       1   29 334   0.08 0.92|     0.89   0.92
  ------ --------- ----------|--------- ------
```


```{#lst:code .text caption="Confusion Matrix for KNN over Spam"}
  ------ --------- ----------|--------- ------
  Actual Predicted Normalized| Accuracy Fscore
            0    1     0    1|     0.91   0.88
       0  529  29   0.95 0.05|Precision Recall
       1   53 310   0.15 0.85|     0.91   0.85
  ------ --------- ----------|--------- ------
```
