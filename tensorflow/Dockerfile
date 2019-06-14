FROM tensorflow/tensorflow:1.11.0-gpu-py3
MAINTAINER BananaBb

# Update apt & install base
RUN apt-get update -y \
 && apt-get install -y \
    libicu-dev

# Install Package
RUN pip install -U gensim \
    spacy \
    textblob \
    scikit-learn
RUN pip install nltk \
    pyicu \
    polyglot==15.03.17 \
    hmmlearn \
    scipy \
    matplotlib \
    ftfy==4.4.3 \
    networkx \
    seaborn \
    pykg2vec==0.0.31 \
    pandas \
    Flask \
    statsmodels \
    xgboost \
    eli5 \
    snorkel-metal
RUN pip3 install torch torchvision

EXPOSE 8888

CMD ["/bin/bash"]