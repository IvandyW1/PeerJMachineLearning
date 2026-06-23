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
1. Extract and Use pandas to load gene expression and mirna datasets from dataset2.zip.

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
| numpy==1.26.1       | loading and processing dataset |
| pandas==1.4.4       | loading and processing dataset |
| matplotlib==0.11.2  | generating and styling plots |
| seaborn==3.5.2      | generating and styling plots |
| sklearn==1.0.2      |  Preprocessing functions, LabelEncoder, Traintestsplit, gridsearch, accuracy score and classification report|

## 7. Methodology
1. Data Acquisition: Download raw gene, miRNA, and phenotype datasets from UCSC XenaBrowser.
2. Preprocessing: Clean and format datasets using Python (pandas, numpy) with Dataset_Preparation.ipynb.
3. DEG Analysis: Apply limma (R) to identify differentially expressed genes using Limma.R and DEG_code.ipynb.
4. Feature Selection: Use wrapper methods (e.g., LASSO, RFE) to refine gene/miRNA features using FS_code.ipynb.
5. Model Development: Train machine learning classifiers (Logistic Regression, Random Forest) (included in DEG_code.ipynb and FS_code.ipynb).


## 8. Citation
Not applicable.

## 9. License & Contribution Guidelines
Not applicable.

## 10. Code Repository or DOI
[![DOI](https://zenodo.org/badge/1186162661.svg)](https://doi.org/10.5281/zenodo.19112207)
