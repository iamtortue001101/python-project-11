# Temel bir Python imajı kullanın
FROM python:3.9

# Çalışma dizinini ayarlayın
WORKDIR /usr/src/app

# Gereken paketleri yükleyin
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# JupyterLab ve diğer bağımlılıkları yükleyin
RUN pip install jupyterlab

# Uygulamanızı başlatmak için bir komut ekleyin
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
