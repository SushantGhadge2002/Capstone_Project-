# Heart Disease Structured Information Extraction using LLM

## Project Overview

This project demonstrates how a Large Language Model (LLM) can convert unstructured heart disease patient notes into structured medical information.

The project uses a locally hosted open-source language model (Qwen2.5-1.5B-Instruct) through the Hugging Face Transformers library. The extracted information is validated using a Pydantic schema to ensure consistent and reliable output.

This project was developed as Part 4 - Task 1 of the assignment.

---

# Objective

The objective of this project is to:

- Extract structured medical information from free-text patient notes.
- Validate the extracted information using a predefined schema.
- Detect malformed outputs.
- Normalize invalid values.
- Save validated outputs into a JSON file.

---

# Dataset

The dataset contains **15 heart disease patient notes**.

Each record contains:

- ID
- Patient Note

Example:

```
A 58-year-old male reports severe chest pain during exercise with shortness of breath.
```

---

# Technologies Used

- Python
- Google Colab
- Hugging Face Transformers
- Qwen2.5-1.5B-Instruct
- Pydantic
- Pandas
- JSON

---

# LLM Used

**Model**

```
Qwen/Qwen2.5-1.5B-Instruct
```

### Why this model?

- Free and open-source
- Can run locally without any API key
- Generates structured JSON responses
- Suitable for instruction-following tasks
- No dependency on paid APIs

---

# Prompt Design

The LLM was instructed to act as an experienced cardiologist.

The prompt included:

- Clear role/persona
- Patient note
- Required output fields
- JSON-only response format

The model extracts:

- Risk Level
- Primary Symptom
- Urgency
- Summary

---

# Schema Validation

A Pydantic schema validates every LLM response.

Required fields:

- risk_level
- primary_symptom
- urgency
- summary

Allowed values:

### Risk Level

- Low
- Medium
- High

### Urgency

- Low
- Medium
- High

---

# Validation Failure Demonstration

To demonstrate schema validation, a malformed response was intentionally created.

Malformed Record

```json
{
  "risk_level": "Critical",
  "primary_symptom": "Chest Pain",
  "urgency": "Immediate",
  "summary": "Patient has severe chest pain."
}
```

Problems:

- Risk Level = Critical (Invalid)
- Urgency = Immediate (Invalid)

The schema validator automatically normalized these values.

Normalized Output

```json
{
  "risk_level": "Medium",
  "primary_symptom": "Chest Pain",
  "urgency": "High",
  "summary": "Patient has severe chest pain."
}
```

This demonstrates successful detection and handling of malformed outputs.

---

# Output

The validated extraction results are stored in:

```
results.json
```

Each record contains:

```json
{
    "id": 1,
    "risk_level": "Medium",
    "primary_symptom": "Chest Pain",
    "urgency": "High",
    "summary": "The patient presents with severe symptoms indicating a potential cardiac issue."
}
```

---

# Project Structure

```
Task_1/
│
├── Part4_Task1.ipynb
├── patient_notes.csv
├── schema.py
├── results.json
├── requirements.txt
└── README.md
```

---

# Requirements

Install dependencies using:

```bash
pip install -r requirements.txt
```

---

# How to Run

1. Open the notebook in Google Colab.
2. Install required libraries.
3. Load the patient notes dataset.
4. Load the Qwen2.5-1.5B-Instruct model.
5. Run the extraction pipeline.
6. Validate outputs using the Pydantic schema.
7. Save validated results to `results.json`.

---

# Files Description

| File | Description |
|-------|-------------|
| Part4_Task1.ipynb | Main notebook |
| patient_notes.csv | Input patient notes |
| schema.py | Pydantic schema |
| results.json | Validated structured outputs |
| requirements.txt | Python dependencies |
| README.md | Project documentation |

---

# Future Improvements

- Use larger medical LLMs
- Improve extraction accuracy
- Add more medical fields
- Build a web interface
- Connect with electronic health records (EHR)

---

# Author

Sushant Ghadge

M.Sc. Statistics

Data Science & Machine Learning