#!/usr/bin/python3
""" Amenity Module for HBNB project """
from models.base_model import BaseModel
from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship


class Amenity(BaseModel, Base):
    """Amenity class that defines class Amenity"""
    __tablename__ = 'amenities'
    name = Column(String(128), nullable=False)
    place_menities = ''
