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
### A. using already preprocessed data
1. Use pandas to load gene expression and mirna datasets.

2. Use DEG_code.ipynb for model traning, testing, and identifying outlier genes. This uses already available data from the Limma analysis using Limma.R

3. Use FS_code.ipynb for model traning, testing, and identifying outlier genes. This uses preprocessed data from Dataset_Preparation.ipynb

### B. using raw data
1. Download dataset from UCSC XenaBrowser
 
2. Use Dataset_Preparation.ipynb to preprocess raw data and export it into .csv

3. Use Limma.R to perform DEG analysis using Limma and export the results

4. Use DEG_code.ipynb for model traning, testing, and identifying outlier genes. This uses data from the Limma analysis in step 3

5. Use FS_code.ipynb for model traning, testing, and identifying outlier genes. This uses preprocessed data from step 2

---

## 6. Requirements
- pandas for load dataset

- Scikit-learn for Preprocessing functions, LabelEncoder, Traintestsplit, gridsearch, accuracy score and classification report

## 7. Citation
Not applicable.

## 8. License & Contribution Guidelines
Not applicable.

## 9. Code Repository or DOI
