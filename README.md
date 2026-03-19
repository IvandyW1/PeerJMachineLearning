# PeerJMachineLearning

## 1. Title

*Project Name:* Designing AI System to Diagnose Prostate Cancer in Race-Specific Patients  
*Gene Expression data:* STAR - Counts Gene Expression  
*miRNA data:* miRNA Expression Quantification 
*Phenotype data:* GDC TCGA-PRAD Phenotype  

---

## 2. Code / Dataset Description

This project consists of four different scripts to handle dataset preprocessing, Differentially Expressed Gene (DEG) analysis, ROC analysis, and the development of machine learning models for prostate cancer classification. The datasets include gene expression, miRNA and phenotype data for prostate cancer diagnosis.

---

## 3. Dataset Information

- *Gene Expression Dataset:*  
  Contains gene expression data from various prostate cancer samples.  
  [Link](https://xenabrowser.net/datapages/?dataset=TCGA-PRAD.star_counts.tsv&host=https%3A%2F%2Fgdc.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443)

- *miRNA Dataset:*  
  Contains miRNA data from various prostate cancer samples.  
  [Link](https://xenabrowser.net/datapages/?dataset=TCGA-PRAD.mirna.tsv&host=https%3A%2F%2Fgdc.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443)

- *Phenotype Dataset:*  
  Contains clinical information about the patients.  
  [Link](https://xenabrowser.net/datapages/?dataset=TCGA-PRAD.clinical.tsv&host=https%3A%2F%2Fgdc.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443)

---

## 4. Code Description

| File Name              | Description |
|------------------------|-------------|
| Dataset_Preparation.ipynb  | Preprocess the sample data |
| Limma.R                    | Performs DEG analysis using limma |
| DEG_code.ipynb             | Conducts model traning and testing from the result of DEG analysis |
| FS_code.ipynb              | Conducts Feature Selection, model traning and testing |

---

## 5. Usage Instructions

1. *Load Datasets:*  
   Use pandas to load gene expression and phenotype datasets.

2. *Separate by Race:*  
   Use Race.ipynb to filter and separate samples by race (e.g., White).

3. *DEG Analysis:*  
   Use DEGdeseq2.ipynb for preprocessing and identifying outlier genes.

4. *Combine Datasets:*  
   Use Combine dataset.ipynb to merge DEG results with raw data based on Ensembl_ID.

5. *ROC Analysis:*  
   Use ROC analysis.ipynb to analyze data139.csv and select significant genes.

6. *Modeling - White Race:*  
   Load the following CSV files in ResultsWhiteRace.py:
   - data13.csv
   - data139.csv
   - data4.csv
   - data7.csv

7. *Model Validation - Black Race:*  
   Load the following CSV files in ResultsBlackRace.py:
   - Datablack13.csv
   - Datablack139.csv
   - Datablack7.csv
   - Datablack4.csv

---

## 6. Requirements
pip install pandas numpy scikit-learn imbalanced-learn. 

- pandas for load dataset

- Scikit-learn for GaussianNB, LabelEncoder, Traintestsplit, gridsearch, accuracy score and classification report

- imbalanced-learn for using balancing technique

## 7. Methodology for Code Usage
   1. Use Race.ipynb to filter data by race.

   2. Perform DEG analysis using DEGdeseq2.ipynb.

   3. Use Combine dataset.ipynb to merge DEG results with raw data.

   4. For 139 features, run ROC analysis.ipynb to further filter genes.

   5. Train the model using ResultsWhiteRace.py.

   6. Validate the model using ResultsBlackRace.py.

## 8. Citation
Not applicable.

## 9. License & Contribution Guidelines
Not applicable.

## 10. Code Repository or DOI
