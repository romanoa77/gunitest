import importlib
import os

payload_mod=os.getenv('PAYLOADNM')
entry_mod=importlib.import_module(payload_mod,package=None)


"""
if __name__ == "__main__":
    app.run()
"""
def create_app():
  entryp=entry_mod.app

  
  
  return entryp
