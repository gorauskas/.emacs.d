


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>emacs-waher-theme/waher-theme.el at master · jasonm23/emacs-waher-theme</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe122-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (2012-05-25, TCS patched 2012-05-27, GitHub v1.0.32) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="xhr-socket" href="/_sockets" />
    
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="87784" name="octolytics-actor-id" /><meta content="gorauskas" name="octolytics-actor-login" /><meta content="2bbb5cd728e163d2a349857f0e8e7f256341ed89879bdcfb17e96ef070c1e31e" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="VnY3Dwtlz5APet+aWrH7dYlJOzUfmgqdc+nGiVVb5aQ=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-8763b325a2ea0e8ea58a3a2364fa47b80875402e.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-7261477ac7d07d2f9ba3ff49c581c837335efeee.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://github.global.ssl.fastly.net/assets/frameworks-f86a2975a82dceee28e5afe598d1ebbfd7109d79.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-885bbd6446aa15eeaac6046421155e6346775f39.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="2a432b5f4c71e8c5b76ec30d0f201890">

        <link data-pjax-transient rel='permalink' href='/jasonm23/emacs-waher-theme/blob/3b9449d15ab76ba1f281daa2af8a69098892fef9/waher-theme.el'>
  <meta property="og:title" content="emacs-waher-theme"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/jasonm23/emacs-waher-theme"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="emacs-waher-theme - Waher theme for emacs, based on dd-waher by dduckster for Sublime Text 2"/>

  <meta name="description" content="emacs-waher-theme - Waher theme for emacs, based on dd-waher by dduckster for Sublime Text 2" />

  <meta content="71587" name="octolytics-dimension-user_id" /><meta content="jasonm23" name="octolytics-dimension-user_login" /><meta content="12477559" name="octolytics-dimension-repository_id" /><meta content="jasonm23/emacs-waher-theme" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="12477559" name="octolytics-dimension-repository_network_root_id" /><meta content="jasonm23/emacs-waher-theme" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/jasonm23/emacs-waher-theme/commits/master.atom" rel="alternate" title="Recent Commits to emacs-waher-theme:master" type="application/atom+xml" />

  </head>


  <body class="logged_in page-blob linux vis-public env-production ">

    <div class="wrapper">
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    <div class="divider-vertical"></div>

    
    <a href="/notifications" class="notification-indicator tooltipped downwards" data-gotokey="n" title="You have unread notifications">
        <span class="mail-status unread"></span>
</a>    <div class="divider-vertical"></div>


      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="gorauskas"
      data-repo="jasonm23/emacs-waher-theme"
      data-branch="master"
      data-sha="6f30c030f90b7ddbcbb6c5f4baca7aee9b97bed6"
  >

    <input type="hidden" name="nwo" value="jasonm23/emacs-waher-theme" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    


  <ul id="user-links">
    <li>
      <a href="/gorauskas" class="name">
        <img height="20" src="https://0.gravatar.com/avatar/4968c9db7f2440a54946557ea51b7535?d=https%3A%2F%2Fidenticons.github.com%2F8549bb466c4738b9dbe2b4ef6271c998.png&amp;s=140" width="20" /> gorauskas
      </a>
    </li>

      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a new repo" aria-label="Create a new repo">
          <span class="octicon octicon-repo-create"></span>
        </a>
      </li>

      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          aria-label="Account settings "
          title="Account settings ">
          <span class="octicon octicon-tools"></span>
        </a>
      </li>
      <li>
        <a class="tooltipped downwards" href="/logout" data-method="post" id="logout" title="Sign out" aria-label="Sign out">
          <span class="octicon octicon-log-out"></span>
        </a>
      </li>

  </ul>

<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>



    <li class="section-title">
      <span title="jasonm23/emacs-waher-theme">This repository</span>
    </li>
    <li>
      <a href="/jasonm23/emacs-waher-theme/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
    </li>
</ul>

</div>


    
  </div>
</div>

      

      




          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="VnY3Dwtlz5APet+aWrH7dYlJOzUfmgqdc+nGiVVb5aQ=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="12477559" />

    <div class="select-menu js-menu-container js-select-menu">
        <a class="social-count js-social-count" href="/jasonm23/emacs-waher-theme/watchers">
          2
        </a>
      <span class="minibutton select-menu-button with-count js-menu-target">
        <span class="js-select-button">
          <span class="octicon octicon-eye-watch"></span>
          Watch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container">

            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for discussions in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  
<div class="js-toggler-container js-social-container starring-container ">
  <a href="/jasonm23/emacs-waher-theme/unstar" class="minibutton with-count js-toggler-target star-button starred upwards" title="Unstar this repo" data-remote="true" data-method="post" rel="nofollow">
    <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
  </a>
  <a href="/jasonm23/emacs-waher-theme/star" class="minibutton with-count js-toggler-target star-button unstarred upwards" title="Star this repo" data-remote="true" data-method="post" rel="nofollow">
    <span class="octicon octicon-star"></span><span class="text">Star</span>
  </a>
  <a class="social-count js-social-count" href="/jasonm23/emacs-waher-theme/stargazers">8</a>
</div>

  </li>


        <li>
          <a href="/jasonm23/emacs-waher-theme/fork" class="minibutton with-count js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="nofollow" data-method="post">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/jasonm23/emacs-waher-theme/network" class="social-count">0</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/jasonm23" class="url fn" itemprop="url" rel="author"><span itemprop="title">jasonm23</span></a></span
          ><span class="repohead-name-divider">/</span><strong
          ><a href="/jasonm23/emacs-waher-theme" class="js-current-repository js-repo-home-link">emacs-waher-theme</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">

      <div class="repository-with-sidebar repo-container ">

        <div class="repository-sidebar">
            

<div class="repo-nav repo-nav-full js-repository-container-pjax js-octicon-loaders">
  <div class="repo-nav-contents">
    <ul class="repo-menu">
      <li class="tooltipped leftwards" title="Code">
        <a href="/jasonm23/emacs-waher-theme" aria-label="Code" class="js-selected-navigation-item selected" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /jasonm23/emacs-waher-theme">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/jasonm23/emacs-waher-theme/issues" aria-label="Issues" class="js-selected-navigation-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /jasonm23/emacs-waher-theme/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests"><a href="/jasonm23/emacs-waher-theme/pulls" aria-label="Pull Requests" class="js-selected-navigation-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /jasonm23/emacs-waher-theme/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped leftwards" title="Wiki">
          <a href="/jasonm23/emacs-waher-theme/wiki" aria-label="Wiki" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_wiki /jasonm23/emacs-waher-theme/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="repo-menu-separator"></div>
    <ul class="repo-menu">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/jasonm23/emacs-waher-theme/pulse" aria-label="Pulse" class="js-selected-navigation-item " data-pjax="true" data-selected-links="pulse /jasonm23/emacs-waher-theme/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/jasonm23/emacs-waher-theme/graphs" aria-label="Graphs" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_graphs repo_contributors /jasonm23/emacs-waher-theme/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/jasonm23/emacs-waher-theme/network" aria-label="Network" class="js-selected-navigation-item js-disable-pjax" data-selected-links="repo_network /jasonm23/emacs-waher-theme/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

            <div class="only-with-full-nav">
              

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>

  <input type="text" class="clone js-url-field"
         value="https://github.com/jasonm23/emacs-waher-theme.git" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/jasonm23/emacs-waher-theme.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>

  

<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><strong>SSH</strong> clone URL</h3>

  <input type="text" class="clone js-url-field"
         value="git@github.com:jasonm23/emacs-waher-theme.git" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:jasonm23/emacs-waher-theme.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>

  <input type="text" class="clone js-url-field"
         value="https://github.com/jasonm23/emacs-waher-theme" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/jasonm23/emacs-waher-theme" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>



<p class="clone-options">You can clone with
    <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
    <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
    <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>,
  and <a href="https://help.github.com/articles/which-remote-url-should-i-use">other methods.</a>
</p>



                <a href="/jasonm23/emacs-waher-theme/archive/master.zip"
                   class="minibutton sidebar-button"
                   title="Download this repository as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:16b227c1ff3c1fa1d7cb41b364a617bc -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:16b227c1ff3c1fa1d7cb41b364a617bc -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/jasonm23/emacs-waher-theme/find/master" data-pjax data-hotkey="t" style="display:none">Show File Finder</a>

<div class="file-navigation">
  


<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master" role="button" aria-label="Switch branches or tags">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/jasonm23/emacs-waher-theme/blob/master/waher-theme.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" data-skip-pjax="true" rel="nofollow" title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/jasonm23/emacs-waher-theme" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">emacs-waher-theme</span></a></span></span><span class="separator"> / </span><strong class="final-path">waher-theme.el</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="waher-theme.el" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://0.gravatar.com/avatar/652cc4410d04b690807fc39449837664?d=https%3A%2F%2Fidenticons.github.com%2F9a676cac9257a36095c23cd6077d838c.png&amp;s=140" width="24" />
    <span class="author"><a href="/jasonm23" rel="author">jasonm23</a></span>
    <time class="js-relative-date" datetime="2013-08-29T20:51:12-07:00" title="2013-08-29 20:51:12">August 29, 2013</time>
    <div class="commit-title">
        <a href="/jasonm23/emacs-waher-theme/commit/ac2f85de728bd7a61dabc88ddcd84382538badf4" class="message" data-pjax="true" title="inital commit">inital commit</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong> contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li class="facebox-user-list-item">
          <img height="24" src="https://0.gravatar.com/avatar/652cc4410d04b690807fc39449837664?d=https%3A%2F%2Fidenticons.github.com%2F9a676cac9257a36095c23cd6077d838c.png&amp;s=140" width="24" />
          <a href="/jasonm23">jasonm23</a>
        </li>
      </ul>
    </div>
  </div>


<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>111 lines (100 sloc)</span>
        <span>6.399 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
                <a class="minibutton tooltipped leftwards"
                   title="Clicking this button will automatically fork this project so you can edit the file"
                   href="/jasonm23/emacs-waher-theme/edit/master/waher-theme.el"
                   data-method="post" rel="nofollow">Edit</a>
          <a href="/jasonm23/emacs-waher-theme/raw/master/waher-theme.el" class="button minibutton " id="raw-url">Raw</a>
            <a href="/jasonm23/emacs-waher-theme/blame/master/waher-theme.el" class="button minibutton ">Blame</a>
          <a href="/jasonm23/emacs-waher-theme/commits/master/waher-theme.el" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
            <a class="minibutton danger empty-icon tooltipped downwards"
               href="/jasonm23/emacs-waher-theme/delete/master/waher-theme.el"
               title="Fork this project and delete file"
               data-method="post" data-test-id="delete-blob-file" rel="nofollow">
            Delete
          </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-emacs-lisp js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">;;; waher-theme.el --- Emacs 24 theme based on waher for st2 by dduckster</span></div><div class='line' id='LC2'><span class="c1">;;; Author: Jasonm23 &lt;jasonm23@gmail.com&gt;</span></div><div class='line' id='LC3'><span class="c1">;;; Url: https://github.com/jasonm23/emacs-waher-theme</span></div><div class='line' id='LC4'><span class="c1">;;; Version: 20130830.0213</span></div><div class='line' id='LC5'><span class="c1">;;; Package-Requires: ((emacs &quot;24.1&quot;))</span></div><div class='line' id='LC6'><span class="c1">;;; Changelog:</span></div><div class='line' id='LC7'><span class="c1">;;; 20130830.0213: - initial version</span></div><div class='line' id='LC8'><span class="c1">;;;</span></div><div class='line' id='LC9'><span class="c1">;;; This program is free software: you can redistribute it and/or modify</span></div><div class='line' id='LC10'><span class="c1">;;; it under the terms of the GNU General Public License as published by</span></div><div class='line' id='LC11'><span class="c1">;;; the Free Software Foundation, version 3 of the License.</span></div><div class='line' id='LC12'><span class="c1">;;;</span></div><div class='line' id='LC13'><span class="c1">;;; This file is distributed in the hope that it will be useful,</span></div><div class='line' id='LC14'><span class="c1">;;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span></div><div class='line' id='LC15'><span class="c1">;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span></div><div class='line' id='LC16'><span class="c1">;;; GNU General Public License for more details.</span></div><div class='line' id='LC17'><span class="c1">;;;</span></div><div class='line' id='LC18'><span class="c1">;;; You should have received a copy of the GNU General Public License</span></div><div class='line' id='LC19'><span class="c1">;;; along with GNU Emacs.</span></div><div class='line' id='LC20'><span class="c1">;;;</span></div><div class='line' id='LC21'><span class="c1">;;; This file is not a part of Emacs</span></div><div class='line' id='LC22'><span class="c1">;;;</span></div><div class='line' id='LC23'><span class="c1">;;; Commentary:</span></div><div class='line' id='LC24'><span class="c1">;;; an Emacs 24 theme based on waher for st2 by dduckster</span></div><div class='line' id='LC25'><span class="c1">;;; see http://www.dduckster.com/Blog/awesome/sublime-theme-dd-waher</span></div><div class='line' id='LC26'><span class="c1">;;;</span></div><div class='line' id='LC27'><br/></div><div class='line' id='LC28'><span class="p">(</span><span class="nf">unless</span> <span class="p">(</span><span class="nb">&gt;= </span><span class="mi">24</span> <span class="nv">emacs-major-version</span><span class="p">)</span></div><div class='line' id='LC29'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">error</span> <span class="s">&quot;waher-theme requires Emacs 24 or later.&quot;</span><span class="p">))</span></div><div class='line' id='LC30'><br/></div><div class='line' id='LC31'><span class="p">(</span><span class="nf">deftheme</span> <span class="nv">waher</span></div><div class='line' id='LC32'>&nbsp;&nbsp;<span class="s">&quot;converted to emacs by jasonm23 - based on waher for st2 by dduckster&quot;</span><span class="p">)</span></div><div class='line' id='LC33'><br/></div><div class='line' id='LC34'><span class="p">(</span><span class="nf">custom-theme-set-faces</span></div><div class='line' id='LC35'>&nbsp;<span class="o">`</span><span class="nv">waher</span></div><div class='line' id='LC36'><br/></div><div class='line' id='LC37'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">cursor</span>                              <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#f8f8f2&quot;</span> <span class="p">))))</span></div><div class='line' id='LC38'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">default</span>                             <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#252620&quot;</span> <span class="nv">:foreground</span> <span class="s">&quot;#CEDBE7&quot;</span> <span class="p">))))</span></div><div class='line' id='LC39'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mode-line</span>                           <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#292923&quot;</span>                       <span class="nv">:height</span> <span class="mi">125</span> <span class="p">))))</span></div><div class='line' id='LC40'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">linum</span>                               <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#3E4D4A&quot;</span> <span class="p">))))</span></div><div class='line' id='LC41'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">trailing-whitespace</span>                 <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#3B3A32&quot;</span> <span class="p">))))</span></div><div class='line' id='LC42'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">highlight</span>                           <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#333333&quot;</span> <span class="p">))))</span></div><div class='line' id='LC43'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">region</span>                              <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#49483E&quot;</span> <span class="p">))))</span></div><div class='line' id='LC44'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">cua-rectangle</span>                       <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#59484E&quot;</span> <span class="p">))))</span></div><div class='line' id='LC45'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">fringe</span>                              <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#292A24&quot;</span><span class="p">))))</span></div><div class='line' id='LC46'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">isearch</span>                             <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#FFE792&quot;</span> <span class="nv">:foreground</span> <span class="s">&quot;#000000&quot;</span> <span class="p">))))</span></div><div class='line' id='LC47'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mode-line-inactive</span>                  <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#292423&quot;</span> <span class="nv">:foreground</span> <span class="s">&quot;#4E4D4A&quot;</span> <span class="p">))))</span></div><div class='line' id='LC48'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mode-line-emphasis</span>                  <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#CDEBF7&quot;</span> <span class="p">))))</span></div><div class='line' id='LC49'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mode-line-highlight</span>                 <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#CDEBF7&quot;</span> <span class="p">))))</span></div><div class='line' id='LC50'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">powerline-active1</span>                   <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#29282E&quot;</span> <span class="p">))))</span></div><div class='line' id='LC51'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">powerline-active2</span>                   <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#292A24&quot;</span> <span class="p">))))</span></div><div class='line' id='LC52'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">powerline-inactive1</span>                 <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#232324&quot;</span> <span class="p">))))</span></div><div class='line' id='LC53'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">powerline-inactive2</span>                 <span class="p">((</span><span class="nf">t</span> <span class="p">(</span> <span class="nv">:background</span> <span class="s">&quot;#292A24&quot;</span> <span class="p">))))</span></div><div class='line' id='LC54'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">minibuffer-prompt</span>                   <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#3090DE&quot;</span> <span class="p">)))</span> <span class="p">)</span></div><div class='line' id='LC55'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-comment-face</span>              <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#7F9F7F&quot;</span> <span class="p">))))</span></div><div class='line' id='LC56'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-comment-delimiter-face</span>    <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#6F8F6F&quot;</span> <span class="p">))))</span></div><div class='line' id='LC57'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-string-face</span>               <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#8CBED6&quot;</span> <span class="p">))))</span></div><div class='line' id='LC58'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-constant-face</span>             <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#DEC77B&quot;</span> <span class="p">))))</span></div><div class='line' id='LC59'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-builtin-face</span>              <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#DEC77B&quot;</span> <span class="p">))))</span></div><div class='line' id='LC60'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-keyword-face</span>              <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#DEC77B&quot;</span> <span class="p">))))</span></div><div class='line' id='LC61'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-variable-name-face</span>        <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#EFA252&quot;</span> <span class="p">))))</span></div><div class='line' id='LC62'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-type-face</span>                 <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#607060&quot;</span> <span class="nv">:underline</span> <span class="s">&quot;#607060&quot;</span> <span class="p">))))</span></div><div class='line' id='LC63'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-function-name-face</span>        <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#D65921&quot;</span> <span class="p">))))</span></div><div class='line' id='LC64'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-warning-face</span>              <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#F92672&quot;</span> <span class="p">))))</span></div><div class='line' id='LC65'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-doc-face</span>                  <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#7F9F7F&quot;</span> <span class="p">))))</span></div><div class='line' id='LC66'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-doc-string-face</span>           <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#7F9F7F&quot;</span> <span class="p">))))</span></div><div class='line' id='LC67'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-negation-char-face</span>        <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#F92F72&quot;</span> <span class="p">))))</span></div><div class='line' id='LC68'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-preprocessor-face</span>         <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#EC9A41&quot;</span> <span class="p">))))</span></div><div class='line' id='LC69'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-regexp-grouping-backslash</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#DF6300&quot;</span> <span class="p">))))</span></div><div class='line' id='LC70'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-regexp-grouping-construct</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#DEC777&quot;</span> <span class="p">))))</span></div><div class='line' id='LC71'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">flymake-errline</span>                     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                                             <span class="nv">:underline</span> <span class="s">&quot;#F92672&quot;</span> <span class="p">))))</span></div><div class='line' id='LC72'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">flymake-warnline</span>                    <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                                             <span class="nv">:underline</span> <span class="s">&quot;#008833&quot;</span> <span class="p">))))</span></div><div class='line' id='LC73'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">diff-added</span>                          <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#A6E22E&quot;</span> <span class="p">))))</span></div><div class='line' id='LC74'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">diff-removed</span>                        <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#F92672&quot;</span> <span class="p">))))</span></div><div class='line' id='LC75'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">diff-file-header</span>                    <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#D65921&quot;</span> <span class="p">))))</span></div><div class='line' id='LC76'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">diff-context</span>                        <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#DDDDDD&quot;</span> <span class="p">))))</span></div><div class='line' id='LC77'>&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">diff-hunk-header</span>                    <span class="p">((</span><span class="nf">t</span> <span class="p">(</span>                       <span class="nv">:foreground</span> <span class="s">&quot;#75715E&quot;</span> <span class="p">))))</span></div><div class='line' id='LC78'>&nbsp;<span class="p">)</span></div><div class='line' id='LC79'><br/></div><div class='line' id='LC80'><span class="p">(</span><span class="nf">custom-theme-set-variables</span></div><div class='line' id='LC81'>&nbsp;<span class="ss">&#39;waher</span></div><div class='line' id='LC82'>&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="nv">powerline-color1</span> <span class="s">&quot;#29282E&quot;</span><span class="p">)</span></div><div class='line' id='LC83'>&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="nv">powerline-color2</span> <span class="s">&quot;#292A24&quot;</span><span class="p">)</span></div><div class='line' id='LC84'>&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="nv">main-line-color1</span> <span class="s">&quot;#29282E&quot;</span><span class="p">)</span></div><div class='line' id='LC85'>&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="nv">main-line-color2</span> <span class="s">&quot;#292A24&quot;</span><span class="p">)</span></div><div class='line' id='LC86'>&nbsp;<span class="p">)</span></div><div class='line' id='LC87'><br/></div><div class='line' id='LC88'><span class="c1">;; Rainbow delimiters</span></div><div class='line' id='LC89'><span class="p">(</span><span class="nf">defun</span> <span class="nv">waher-rainbow-delim-set-face</span> <span class="p">()</span></div><div class='line' id='LC90'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-face-attribute</span> <span class="ss">&#39;rainbow-delimiters-depth-1-face</span>   <span class="nv">nil</span>       <span class="nv">:foreground</span> <span class="s">&quot;#D65921&quot;</span><span class="p">)</span></div><div class='line' id='LC91'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-face-attribute</span> <span class="ss">&#39;rainbow-delimiters-depth-2-face</span>   <span class="nv">nil</span>       <span class="nv">:foreground</span> <span class="s">&quot;#2B88A8&quot;</span><span class="p">)</span></div><div class='line' id='LC92'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-face-attribute</span> <span class="ss">&#39;rainbow-delimiters-depth-3-face</span>   <span class="nv">nil</span>       <span class="nv">:foreground</span> <span class="s">&quot;#FFA07E&quot;</span><span class="p">)</span></div><div class='line' id='LC93'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-face-attribute</span> <span class="ss">&#39;rainbow-delimiters-depth-4-face</span>   <span class="nv">nil</span>       <span class="nv">:foreground</span> <span class="s">&quot;#30D039&quot;</span><span class="p">)</span></div><div class='line' id='LC94'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-face-attribute</span> <span class="ss">&#39;rainbow-delimiters-depth-5-face</span>   <span class="nv">nil</span>       <span class="nv">:foreground</span> <span class="s">&quot;#58A0A2&quot;</span><span class="p">)</span></div><div class='line' id='LC95'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-face-attribute</span> <span class="ss">&#39;rainbow-delimiters-depth-6-face</span>   <span class="nv">nil</span>       <span class="nv">:foreground</span> <span class="s">&quot;#6070DF&quot;</span><span class="p">)</span></div><div class='line' id='LC96'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-face-attribute</span> <span class="ss">&#39;rainbow-delimiters-depth-7-face</span>   <span class="nv">nil</span>       <span class="nv">:foreground</span> <span class="s">&quot;#D78060&quot;</span><span class="p">)</span></div><div class='line' id='LC97'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-face-attribute</span> <span class="ss">&#39;rainbow-delimiters-depth-8-face</span>   <span class="nv">nil</span>       <span class="nv">:foreground</span> <span class="s">&quot;#FFDD77&quot;</span><span class="p">)</span></div><div class='line' id='LC98'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-face-attribute</span> <span class="ss">&#39;rainbow-delimiters-depth-9-face</span>   <span class="nv">nil</span>       <span class="nv">:foreground</span> <span class="s">&quot;#44FF88&quot;</span><span class="p">)</span></div><div class='line' id='LC99'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-face-attribute</span> <span class="ss">&#39;rainbow-delimiters-unmatched-face</span> <span class="nv">nil</span>       <span class="nv">:foreground</span> <span class="s">&quot;#F92672&quot;</span><span class="p">))</span></div><div class='line' id='LC100'><br/></div><div class='line' id='LC101'><span class="p">(</span><span class="nf">eval-after-load</span> <span class="s">&quot;rainbow-delimiters&quot;</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">waher-rainbow-delim-set-face</span><span class="p">))</span></div><div class='line' id='LC102'><br/></div><div class='line' id='LC103'><span class="c1">;;;###autoload</span></div><div class='line' id='LC104'><span class="p">(</span><span class="nf">when</span> <span class="nv">load-file-name</span></div><div class='line' id='LC105'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">add-to-list</span> <span class="ss">&#39;custom-theme-load-path</span></div><div class='line' id='LC106'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">file-name-as-directory</span> <span class="p">(</span><span class="nf">file-name-directory</span> <span class="nv">load-file-name</span><span class="p">))))</span></div><div class='line' id='LC107'><br/></div><div class='line' id='LC108'><span class="p">(</span><span class="nf">provide-theme</span> <span class="ss">&#39;waher</span><span class="p">)</span></div><div class='line' id='LC109'><br/></div><div class='line' id='LC110'><span class="c1">;;; waher-theme.el ends here</span></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.04034s from github-fe122-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/jasonm23/emacs-waher-theme/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

    
  </body>
</html>

