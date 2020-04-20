# Regular Expressions IV: Wildcards 

The `.` operator is an important functionality in regular expressions, allowing us to match anything and everything to give us broad captures we may not care to qualify but want to include. They are often used in tandem with more specific patterns, as we should prefer specifity in composing regular expressions. We will also cover a few usage patterns using the dot `.` operator. 

Python3 is going to be our environment to learn these regex functionalities, but our knowledge should largely transfer to other platforms. 

** Why Learn Regular Expressions? **

Many data science, data engineering, and technology professionals have encountered regular expressions at some point. This esoteric, miniature language is used for matching complex text patterns, and looks mysterious and intimidating at first. However, regular expressions (also called “regex”) are a powerful tool that only require a small time investment to learn. They are almost ubiquitously supported wherever there is data. Several analytical and technology platforms support them, including SQL, Python, R, Alteryx, Tableau, LibreOffice, Java, Scala, .NET, and Go. Major text editors and IDE’s like Atom Editor, Notepad++, Emacs, Vim, Intellij IDEA, and PyCharm also support searching files with regular expressions.

Regular expressions offer universal utility and surprisingly, they do not have a steep learning curve. If you frequently find yourself manually scanning documents or parsing substrings just to identify text patterns, you might want to give them a try! Especially in data science and data engineering, they can assist in a wide spectrum of tasks, from wrangling data to qualifying and categorizing it.

