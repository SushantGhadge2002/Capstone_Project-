from pydantic import BaseModel, field_validator
from typing import Literal

class HeartDiseaseExtraction(BaseModel):
    risk_level: str
    primary_symptom: str
    urgency: str
    summary: str

    @field_validator('urgency')
    @classmethod
    def validate_urgency(cls, v: str) -> str:
        mapping = {
            "Immediate": "High",
            "Critical": "High",
            "Urgent": "High",
            "Moderate": "Medium",
            "Minor": "Low"
        }
        normalized = mapping.get(v, v)
        if normalized not in ["Low", "Medium", "High"]:
            # Default to Medium if unknown but non-empty
            return "Medium"
        return normalized

    @field_validator('risk_level')
    @classmethod
    def validate_risk(cls, v: str) -> str:
        if v not in ["Low", "Medium", "High"]:
             return "Medium"
        return v