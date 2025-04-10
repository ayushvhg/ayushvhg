import os

# Replace with your folder ID
folder_id = "1JlnxCB2wxAt0hRhahiH_QmaWfTb80aFg"

# Build the folder URL
url = f"https://drive.google.com/drive/folders/{folder_id}"

# gdown supports folders using this syntax
os.system(f"gdown --folder https://drive.google.com/drive/folders/{folder_id}")
