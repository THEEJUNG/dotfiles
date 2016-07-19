

cd $HOME/local
VERSION=04-20

## Download the Stanford NLP tools
# older version with java 1.7
#wget http://nlp.stanford.edu/software/stanford-ner-2015-$VERSION.zip
#wget http://nlp.stanford.edu/software/stanford-postagger-full-2015-$VERSION.zip
#wget http://nlp.stanford.edu/software/stanford-parser-full-2015-$VERSION.zip
## Extract the zip file.
#unzip stanford-ner-2015-$VERSION.zip 
#unzip stanford-parser-full-2015-$VERSION.zip 
#unzip stanford-postagger-full-2015-$VERSION.zip


echo 'export STANFORDTOOLSDIR=$HOME/local' >> ~/.bashrc
echo 'export VERSION=04-20' >> ~/.bashrc
echo 'export CLASSPATH=$STANFORDTOOLSDIR/stanford-postagger-full-2015-$VERSION/stanford-postagger.jar:$STANFORDTOOLSDIR/stanford-ner-2015-$VERSION/stanford-ner.jar:$STANFORDTOOLSDIR/stanford-parser-full-2015-$VERSION/stanford-parser.jar:$STANFORDTOOLSDIR/stanford-parser-full-2015-$VERSION/stanford-parser-3.5.2-models.jar'>> ~/.bashrc
echo 'export STANFORD_MODELS=$STANFORDTOOLSDIR/stanford-postagger-full-2015-$VERSION/models:$STANFORDTOOLSDIR/stanford-ner-2015-$VERSION/classifiers' >> ~/.bashrc

