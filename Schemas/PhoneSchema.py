from pydantic import BaseModel
class PhoneSchema(BaseModel):
    uid :str
    modele:str
    osVersion:str



    