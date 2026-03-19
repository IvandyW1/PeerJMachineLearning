# Install BiocManager if not installed
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

# List of required packages
required_packages <- c("edgeR", "DESeq2", "limma", "arrow")

# Install missing packages
for (pkg in required_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    cat("Installing package:", pkg, "\n")
    BiocManager::install(pkg, ask = FALSE)
  }
}

# Load necessary libraries
library(limma)
library(preprocessCore)  

# Load data
data <- read.csv("gene2.csv", row.names = NULL)
data <- data[, -c(1, 2)]


# Extract labels (assumed to be in the first column)
labels <- factor(data[[1]], levels = c(0, 1))  # 0 = early, 1 = late
sample_ids <- rownames(data) <- paste0("Sample", seq_len(nrow(data)))  # Assign sample IDs if not present

# Extract expression data (everything except the first column)
expression_data <- data[, -1]

# Convert to numeric matrix
expression_data <- apply(expression_data, 2, as.numeric)

# Transpose so that rows = miRNAs, columns = samples (as limma requires)
expression_matrix <- t(expression_data)

# Optional: log2-transform if data is not already log2
# expression_matrix <- log2(expression_matrix + 1)

# Create design matrix for differential expression analysis
design <- model.matrix(~ labels)

# Fit linear model
fit <- lmFit(expression_matrix, design)

# Empirical Bayes moderation
fit <- eBayes(fit)

# Plot standard deviation vs average expression
plotSA(fit, main = "Mean-variance trend")

# Extract all DE miRNAs
deg_results <- topTable(fit, coef = 2, number = Inf)

# Save results
write.csv(deg_results, "gene_limma2.csv")









