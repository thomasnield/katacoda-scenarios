# Regular Expressions II: Anchoring

When we are matching patterns with regular expressions, we will often want to qualify the start or end of a string or line. This is where anchors come in handy. We will also learn how these operators can be used as an insurance policy to force a full match, even if the platform is configured to do partial matches by default. 

Python3 is going to be our environment to learn these regex functionalities, but our knowledge should largely transfer to other platforms. 

** Why Learn Regular Expressions? **

Many data science, data engineering, and technology professionals have encountered regular expressions at some point. This esoteric, miniature language is used for matching complex text patterns, and looks mysterious and intimidating at first. However, regular expressions (also called “regex”) are a powerful tool that only require a small time investment to learn. They are almost ubiquitously supported wherever there is data. Several analytical and technology platforms support them, including SQL, Python, R, Alteryx, Tableau, LibreOffice, Java, Scala, .NET, and Go. Major text editors and IDE’s like Atom Editor, Notepad++, Emacs, Vim, Intellij IDEA, and PyCharm also support searching files with regular expressions.

Regular expressions offer universal utility and surprisingly, they do not have a steep learning curve. If you frequently find yourself manually scanning documents or parsing substrings just to identify text patterns, you might want to give them a try! Especially in data science and data engineering, they can assist in a wide spectrum of tasks, from wrangling data to qualifying and categorizing it.

