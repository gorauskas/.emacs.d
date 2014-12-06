;; part of emacs init for Jonas Gorauskas
;; modified: 2014-12-05 20:20:07
;; htt://jonas.gorauskas.com/
;; http://thestandardoutput.com/

(message "JGG: Loading feeds...")

(require 'elfeed)

(setq-default elfeed-search-filter "@1-month-ago +unread ")

;; Entries older than 1 month are marked as read
(add-hook 'elfeed-new-entry-hook
          (elfeed-make-tagger :before "1 month ago"
                              :remove 'unread))

(setq elfeed-db-directory "~/.emacs.d/.elfeed"
      elfeed-max-connections 5
      elfeed-feeds '(("http://www.thestandardoutput.com/feed" home)
                     ("http://feeds.feedburner.com/DilbertDailyStrip" comics)
                     ("http://xkcd.com/rss.xml" comics)
                     ("http://www.randsinrepose.com/index.xml" startups)
                     ("http://microisvjournal.wordpress.com/feed" startups)
                     ("http://www.aaronsw.com/2002/feeds/pgessays.rss" startups)
                     ("http://feeds.feedburner.com/SoftwareByRob" startups)
                     ("http://feeds.feedburner.com/miketaber" startups)
                     ("http://feeds.feedburner.com/Webappers" programming)
                     ("http://www.defmacro.org/rss/news.xml" programming)
                     ("http://www.artima.com/weblogs/feeds/bloggers/beckel.rss" programming)
                     ("http://feeds.feedburner.com/AyendeRahien" programming)
                     ("http://feeds.feedburner.com/ajaxian" programming)
                     ("http://feeds.feedburner.com/10xSoftwareDevelopment" programming)
                     ("http://gyorgybalassy.wordpress.com/feed" programming)
                     ("http://www.tbray.org/ongoing/ongoing.atom" programming)
                     ("http://feeds.feedburner.com/catonmat" programming)
                     ("http://ericlippert.com/feed" programming)
                     ("http://feeds.feedburner.com/codinghorror" programming)
                     ("http://blogs.msdn.com/b/ericlippert/rss.aspx" programming)
                     ("http://feeds.feedburner.com/JonSkeetCodingBlog" programming)
                     ("http://sayspy.blogspot.com/feeds/posts/default" programming python)
                     ("http://dabeaz.blogspot.com/feeds/posts/default" programming python)
                     ("http://feeds.feedburner.com/DougHellmann" programming python)
                     ("http://blog.ianbicking.org/feed" programming python)
                     ("http://planet.python.org/rss10.xml" programming python)
                     ("http://python-history.blogspot.com/feeds/posts/default" programming python)
                     ("http://www.reddit.com/r/emacs/.rss" programming lisp emacs)
                     ("http://emacs-fu.blogspot.com/feeds/posts/default" programming lisp emacs)
                     ("http://lambda-the-ultimate.org/rss.xml" programming languages)
                     ("http://pipes.yahoo.com/pipes/pipe.run?_id=3PHwctj52xGg02vB6kjTQA&_render=rss" programming lisp emacs)
                     ("http://dorophone.blogspot.com/feeds/posts/default" programming lisp emacs)
                     ("http://pragprog.com/feed/global" programming)
                     ("http://lucabolognese.wordpress.com/feed" programming)
                     ("http://feeds.feedburner.com/olabini" programming languages)
                     ("http://feeds.feedburner.com/OnSmalltalk" programming smalltalk)
                     ("http://www.reddit.com/r/programming/.rss" programming)
                     ("http://feeds.feedburner.com/wekeroad/EeKc" programming)
                     ("http://feeds.feedburner.com/ScottHanselman" programming)
                     ("http://steve-yegge.blogspot.com/atom.xml" programming)
                     ("http://tirania.org/blog/miguel.rss2" programming)
                     ("http://blogs.msdn.com/b/oldnewthing/atom.aspx" programming)
                     ("http://esr.ibiblio.org/?feed=rss2" programming esr)
                     ("http://www.charlespetzold.com/rss.xml" programming)
                     ("http://www.shirky.com/weblog/feed" technology)
                     ("http://commandline.org.uk/feeds/full" technology)
                     ("http://feeds.feedburner.com/SteveGibsonsBlog" technology)
                     ("http://feeds.feedburner.com/schneier/fulltext" security)))

(provide 'jgg-feeds)
;; eof
