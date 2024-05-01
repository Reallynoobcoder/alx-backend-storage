#!/usr/bin/env python3
"""Python function that lists all documents."""
import pymongo


def list_all(mongo_collection) -> list:
    """Return mango collection."""
    return mongo_collection.find()
