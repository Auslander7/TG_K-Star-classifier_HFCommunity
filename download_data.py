import gdown

# ID del archivo en Google Drive
file_id = "1zphrwZyDh6x3UL3OI3QMn9IHOjAcx7hV"
# Nombre local del archivo descargado
output = "hfc1.dump"

# Descargar archivo
gdown.download(f"https://drive.google.com/uc?id={file_id}", output, quiet=False)

print(f"✅ Archivo descargado como {output}")
