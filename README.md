# 🧹 Data Cleaning Tool (R Shiny App)

An interactive **data cleaning web application** built using **R Shiny**.  
This tool allows users to upload their own dataset and perform essential data cleaning operations dynamically without writing code.

It is designed to simplify preprocessing tasks and make datasets ready for analysis or machine learning.

---

## 🚀 Key Features

📂 Upload your own CSV dataset  
👀 Preview raw data instantly  
🧹 Apply multiple cleaning operations  
🔤 Convert column names to snake_case  
❌ Remove constant (non-informative) columns  
🚫 Remove rows with missing values (NA)  
📊 Preview cleaned dataset in real-time  
📥 Download cleaned dataset  
⚡ Fast and interactive UI  

---

## 🛠️ Technologies Used

- 🟢 **R Programming Language**  
- 📦 **Shiny**  
- 🔄 **dplyr**  
- 🔤 **snakecase**  

---

## 📂 Project Structure

- `app.R` → Main Shiny application file (Data Cleaning Tool)  
- *(No dataset included – user uploads their own CSV)*  

---

## ⚙️ Application Functionality

The application consists of two main components:

---

### 🔹 1. User Input Panel (Sidebar)

The sidebar allows users to control how the dataset is processed:

#### 📥 File Upload
- Upload any `.csv` file from your system  

#### ⚙️ Data Settings
- **Delimiter Input**  
  → Specify separator (default is comma `,`)  

- **Skip Rows**  
  → Ignore a specified number of rows from the top  

- **Preview Rows**  
  → Control how many rows are displayed in preview  

---

#### 🧹 Cleaning Options

- 🔤 **Convert to snake_case**  
  → Renames all column headers into a clean, consistent format  

- ❌ **Remove Constant Columns**  
  → Deletes columns that contain only one unique value  

- 🚫 **Remove NA Rows**  
  → Removes rows containing missing values  

---

#### 📥 Download Button
- Allows users to export cleaned data as:
---

---

### 🔹 2. Output Panel (Main Area)

The main panel displays:

#### 📊 Raw Data Preview
- Shows original dataset (before cleaning)

#### 📊 Cleaned Data Preview
- Displays updated dataset after applying selected operations  

---

### ⚡ Dynamic Processing

- All operations are applied in real-time  
- Changes reflect instantly when options are selected  
- No need to reload the application  

---

## 🎮 How to Run the App

### Step 1: Install Required Packages

```r
install.packages(c("shiny", "dplyr", "snakecase"))
```

## 🖼️ Application Screenshots
<img width="1920" height="1080" alt="Data Cleaning " src="https://github.com/user-attachments/assets/02a9a38e-db36-4f55-a3d2-feb5fb7b4156" />

---
## 🎯 Purpose of the Project
Simplify data preprocessing tasks
Provide a no-code data cleaning interface
Demonstrate reactive programming in R Shiny
Prepare datasets for analysis and machine learning

## 👩‍💻 Author

Fatima Sohail
