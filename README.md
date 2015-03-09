Readme
============================

sudo apt-get install exuberant-ctags

OR 

```
sudo apt-get install autoconf
svn checkout svn://svn.code.sf.net/p/ctags/code/trunk ctags-code
autoheader
autoconf
./configure
make 
sudo make install
```

Then add to ~/.ctags

```
--langdef=latex
--langmap=latex:.tex
--regex-latex=/^\\part[[:space:]]*(\[[^]]*\])?[[:space:]]*\{([^}]+)\}/PART \2/s,part/
--regex-latex=/^\\part[[:space:]]*\*[[:space:]]*\{([^}]+)\}/PART \1/s,part/
--regex-latex=/^\\chapter[[:space:]]*(\[[^]]*\])?[[:space:]]*\{([^}]+)\}/CHAP \2/s,chapter/
--regex-latex=/^\\chapter[[:space:]]*\*[[:space:]]*\{([^}]+)\}/CHAP \1/s,chapter/
--regex-latex=/^\\section[[:space:]]*(\[[^]]*\])?[[:space:]]*\{([^}]+)\}/\. \2/s,section/
--regex-latex=/^\\section[[:space:]]*\*[[:space:]]*\{([^}]+)\}/\. \1/s,section/
--regex-latex=/^\\subsection[[:space:]]*(\[[^]]*\])?[[:space:]]*\{([^}]+)\}/\.\. \2/s,subsection/
--regex-latex=/^\\subsection[[:space:]]*\*[[:space:]]*\{([^}]+)\}/\.\. \1/s,subsection/
--regex-latex=/^\\subsubsection[[:space:]]*(\[[^]]*\])?[[:space:]]*\{([^}]+)\}/\.\.\. \2/s,subsubsection/
--regex-latex=/^\\subsubsection[[:space:]]*\*[[:space:]]*\{([^}]+)\}/\.\.\. \1/s,subsubsection/
--regex-latex=/^\\includegraphics[[:space:]]*(\[[^]]*\])?[[:space:]]*(\[[^]]*\])?[[:space:]]*\{([^}]+)\}/\3/g,graphic+listing/
--regex-latex=/^\\lstinputlisting[[:space:]]*(\[[^]]*\])?[[:space:]]*(\[[^]]*\])?[[:space:]]*\{([^}]+)\}/\3/g,graphic+listing/
--regex-latex=/\\label[[:space:]]*\{([^}]+)\}/\1/l,label/
--regex-latex=/\\ref[[:space:]]*\{([^}]+)\}/\1/r,ref/
--regex-latex=/\\pageref[[:space:]]*\{([^}]+)\}/\1/p,pageref/
--regex-make=/^([^:# \t]+)[ \t]*[:]{1,2}/\1/t,targets/
```
