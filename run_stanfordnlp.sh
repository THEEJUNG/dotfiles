

cd $HOME/local

## Download the Stanford NLP tools
# older version with java 1.7
#wget http://nlp.stanford.edu/software/stanford-ner-$VERSION.zip
#wget http://nlp.stanford.edu/software/stanford-postagger-full-$VERSION.zip
#wget http://nlp.stanford.edu/software/stanford-parser-full-$VERSION.zip
## Extract the zip file.
#unzip stanford-ner-$VERSION.zip 
#unzip stanford-parser-full-$VERSION.zip 
#unzip stanford-postagger-full-$VERSION.zip



VERSION=2016-10-31
echo 'export VERSION=$VERSION' >> ~/.bashrc
#wget http://nlp.stanford.edu/software/stanford-corenlp-full-$VERSION.zip -P $HOME/local/
#wget http://nlp.stanford.edu/software/stanford-ner-$VERSION.zip -P $HOME/local/
#wget http://nlp.stanford.edu/software/stanford-postagger-full-$VERSION.zip -P $HOME/local/
#wget http://nlp.stanford.edu/software/stanford-parser-full-$VERSION.zip -P $HOME/local/

#unzip stanford*$VERSION.zip
#exit


echo 'export STANFORDTOOLSDIR=$HOME/local' >> ~/.bashrc
echo 'export CLASSPATH=$STANFORDTOOLSDIR/stanford-postagger-full-$VERSION/stanford-postagger.jar:$STANFORDTOOLSDIR/stanford-ner-$VERSION/stanford-ner.jar:$STANFORDTOOLSDIR/stanford-parser-full-$VERSION/stanford-parser.jar:$STANFORDTOOLSDIR/stanford-parser-full-$VERSION/stanford-parser-3.5.2-models.jar:$STANFORDTOOLSDIR/stanford-corenlp-full-$VERSION/stanford-corenlp-3.7.0.jar:$STANFORDTOOLSDIR/stanford-corenlp-full-$VERSION/stanford-corenlp-3.7.0-models.jar:$STANFORDTOOLSDIR/stanford-corenlp-full-$VERSION/xom.jar'>> ~/.bashrc
echo 'export STANFORD_MODELS=$STANFORDTOOLSDIR/stanford-postagger-full-$VERSION/models:$STANFORDTOOLSDIR/stanford-ner-$VERSION/classifiers' >> ~/.bashrc

