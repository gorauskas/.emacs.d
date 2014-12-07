;; part of emacs init for Jonas Gorauskas
;; modified: 2014-12-07 02:07:36
;; htt://jonas.gorauskas.com/
;; http://thestandardoutput.com/

(message "JGG: Loading feeds...")

(require 'elfeed)

(setq-default elfeed-search-filter "@1-month-ago +unread ")

;; Entries older than 1 month are marked as read
(add-hook 'elfeed-new-entry-hook
          (elfeed-make-tagger :before "2 weeks ago"
                              :remove 'unread))

(setq elfeed-db-directory "~/.emacs.d/.elfeed"
      elfeed-max-connections 5
      elfeed-feeds '(("http://thestandardoutput.com/rss.xml" home)
                     ("http://feeds.feedburner.com/DilbertDailyStrip" comics)
                     ("http://xkcd.com/rss.xml" comics)
                     ("http://what-if.xkcd.com/feed.atom" comics funny)
                     ("http://www.randsinrepose.com/index.xml" startups)
                     ("http://feeds.feedburner.com/SoftwareByRob" startups)
                     ("http://feeds.feedburner.com/miketaber" startups)
                     ("http://www.artima.com/weblogs/feeds/bloggers/beckel.rss" programming)
                     ("http://gyorgybalassy.wordpress.com/feed" programming)
                     ("http://www.tbray.org/ongoing/ongoing.atom" programming)
                     ("http://feeds.feedburner.com/catonmat" programming)
                     ("https://medium.com/feed/coder-who-says-py/" programming python)
                     ("http://feeds.feedburner.com/DougHellmann" programming python)
                     ("http://planetpython.org/rss20.xml" programming python)
                     ("http://www.reddit.com/r/emacs/.rss" programming lisp emacs)
                     ("http://lambda-the-ultimate.org/rss.xml" programming languages)
                     ("http://pipes.yahoo.com/pipes/pipe.run?_id=3PHwctj52xGg02vB6kjTQA&_render=rss" programming lisp scheme emacs)
                     ("http://pragprog.com/feed/global" programming)
                     ("http://lucabolognese.wordpress.com/feed" programming)
                     ("http://www.reddit.com/r/programming/.rss" programming)
                     ("http://feeds.feedburner.com/wekeroad/EeKc" programming)
                     ("http://feeds.feedburner.com/ScottHanselman" programming)
                     ("http://gplusrss.com/rss/feed/c69c5c87b32a41ead6b551c6d48c1d13548389eb386f1" programming steve-yegge)
                     ("http://tirania.org/blog/miguel.rss2" programming)
                     ("http://esr.ibiblio.org/?feed=rss2" programming esr)
                     ("http://steve.grc.com/feed/" technology)
                     ("https://www.schneier.com/blog/atom.xml" security)
                     ("http://krebsonsecurity.com/feed/" security)
                     ("http://irreal.org/blog/?feed=rss2" programming lisp scheme emacs)
                     ("http://sachachua.com/blog/feed/" emacs)
                     ("http://blog.ioactive.com/feeds/posts/default" security)
                     ("http://emacsredux.com/atom.xml" emacs)
                     ("http://batsov.com/atom.xml" emacs clojure lisp)
                     ("https://projecteuler.net/rss2_euler.xml" programming puzzles)))

(provide 'jgg-feeds)
;; eof
