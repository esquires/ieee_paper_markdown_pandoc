# Introduction

\IEEEPARstart{T}{his} report is an exploration on some techniques in
supervised learning. Five different algorithms will be compared across
two different data sets.

# Method
Five learning algorithms were implemented and their results were
compared across two data sets. The algorithms were:

* Decision trees with some form of pruning
* Neural networks
* Boosting
* Support Vector Machines
* k-Nearest Neighbors

Decision Trees. For the decision tree, you should implement or steal a
decision tree algorithm (and by "implement or steal" I mean "steal").
Be sure to use some form of pruning. You are not required to use
information gain (for example, there is something called the GINI index
that is sometimes used) to split attributes, but you should describe
whatever it is that you do use.

Neural Networks. For the neural network you should implement or steal
your favorite kind of network and training algorithm. You may use
networks of nodes with as many layers as you like and any activation
function you see fit.

Boosting. Implement or steal a boosted version of your decision trees.
As before, you will want to use some form of pruning, but presumably
because you're using boosting you can afford to be much more aggressive
about your pruning.

Support Vector Machines. You should implement (for sufficently loose
definitions of implement including "download") SVMs. This should be done
in such a way that you can swap out kernel functions. I'd like to see at
least two.

k-Nearest Neighbors. You should "implement" (the quotes mean I don't
mean it: steal the code) kNN. Use different values of k.

Testing. you should design two interesting classification problems. For
the purposes of this assignment, a classification problem is just a set
of training examples and a set of test examples.  You'll have to explain
why they are interesting, use them in later assignments, and come to
really care about them.

# Data Sets

The two data sets chosen for this report are *spam* and *credit default*.
The spam data set is a collection of spam and non-spam emails. it has
4601 instances and 57 attributes.

The credit default data set is a collection of customers' default
payments in Taiwan. it has 30000 instances and 23 attributes.

# Learners
## Decision Tree Learner

These are the graphs for the spam data:


Non-English or Math|Frequency |Comments
-------------------|----------|-----------------
\O                 |1 in 1,000|For Swedish names
$\pi$              |1 in 5    |Common in math
\$                 |4 in 5    |Used in business

Table: (Table title) \label{my_table}

```{#lst:overview .json caption="Data Set Information"}
{
  "envelope": {
    "headers": {
    "inputFlow": {
      "flowName": "User",
      "flowInputDate": "2018-12-01T09:57:02.399948Z",
      "flowSource": "ent_oii_dwh.identity"
    }
  },
  "triples": [
  ],
  "instance": {
    "oii_global_user": "643488425",
    "auth_login_name": "driscoll@gmail.com",
    "auth_email": "driscoll@gmail.com",
    "auth_first_name": "NULL",
    "auth_middle_name": "NULL",
    "auth_last_name": "NULL",
    "auth_email_1": "NULL",
    "oii_company_user_oii_company": null,
    "auth_address_type": null,
    "auth_address1": null,
    "auth_address2": null,
    "auth_address3": null,
    "auth_city": null,
    "auth_state": null,
    "auth_postal_code": null,
    "auth_postal_code_extension": null,
    "auth_country_code": null,
    "auth_address_active_flag": null,
    "auth_phone_type": null,
    "auth_phone_country_code": "1",
    "auth_phone_area_code": "408",
    "auth_phone_number": "8169640",
    "auth_phone_ext": null,
    "auth_phone_status": null,
    "auth_phone_active_flag": null,
    "auth_create_date": "2013-02-24 11:47:27",
    "auth_modify_date": "2013-02-24 11:47:27",
    "auth_last_mod_time": "NULL",
    "auth_last_accessed_date": "2013-03-19 21:52:13"
  },
  "attachments": null
  }
}
```

# Bug

Is there a bug here?

<!---
SVMLinear,credit_default,0.6776014175615792,"{'SVM__C': 0.001, 'SVM__class_weight': 'balanced', 'SVM__max_iter': 2000, 'SVM__tol': 1e-08}"
SVM_RBF,credit_default,0.543146256509561,"{'SVM__C': 2.251, 'SVM__class_weight': 'balanced', 'SVM__decision_function_shape': 'ovo', 'SVM__gamma': 0.8434782608695652, 'SVM__max_iter': 2000, 'SVM__tol': 1e-08}"
ANN,credit_default,0.6712831541519197,"{'MLP__activation': 'relu', 'MLP__alpha': 0.0001, 'MLP__hidden_layer_sizes': (11, 11, 11), 'MLP__learning_rate_init': 0.128}"
DT,credit_default,0.7078469187016243,"{'DT__class_weight': 'balanced', 'DT__criterion': 'gini', 'DT__max_depth': 5}"
Boost,credit_default,0.7162196659254505,"{'Boost__base_estimator__max_depth': 6, 'Boost__learning_rate': 0.08, 'Boost__n_estimators': 20}"
KNN,credit_default,0.6350003894488547,"{'KNN__metric': 'euclidean', 'KNN__n_neighbors': 13, 'KNN__weights': 'uniform'}"

ANN,spam_data,0.9237462602565241,"{'MLP__activation': 'relu', 'MLP__alpha': 1.0, 'MLP__hidden_layer_sizes': (57, 57, 57), 'MLP__learning_rate_init': 0.004}"
DT,spam_data,0.9290411445836666,"{'DT__class_weight': None, 'DT__criterion': 'entropy', 'DT__max_depth': 18}"
Boost,spam_data,0.945784827749637,"{'Boost__base_estimator__max_depth': 10, 'Boost__learning_rate': 0.64, 'Boost__n_estimators': 30}"
KNN,spam_data,0.9010115820966261,"{'KNN__metric': 'manhattan', 'KNN__n_neighbors': 1, 'KNN__weights': 'uniform'}"
SVMLinear,spam_data,0.9310998548535204,"{'SVM__C': 0.501, 'SVM__class_weight': 'balanced', 'SVM__max_iter': 2000, 'SVM__tol': 0.01000001}"
SVM_RBF,spam_data,0.9431633046002547,"{'SVM__C': 1.751, 'SVM__class_weight': 'balanced', 'SVM__decision_function_shape': 'ovo', 'SVM__gamma': 0.017543859649122806, 'SVM__max_iter': 2000, 'SVM__tol': 0.06000001}"
-->

# References

---
nocite: '@*'
---
