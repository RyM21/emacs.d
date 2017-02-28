(custom-set-variables)
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
<<<<<<< HEAD
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(async-bytecomp-allowed-packages
   (quote
    (async helm helm-core helm-ls-git helm-ls-hg magit all)))
 '(bind-key-describe-special-forms t)
 '(blink-cursor-mode nil)
 '(company-auto-complete (quote (quote company-explicit-action-p)))
 '(custom-enabled-themes (quote (tsdh-dark RyanTheme\.el)))
 '(custom-safe-themes
   (quote
    ("3448e3f5d01b39ce75962328a5310438e4a19e76e4b691c21c8e04ca318a5f62" "b0c472fe3bf10a76a3d9e1931a1114ac4d09c64c1f9eb4909c7a550f3cefd2ce" default)))
 '(default ((t (:background nil))))
 '(elfeed-feeds
   (quote
    ("http://feeds.feedburner.com/venturebeat" "http://feeds.feedburner.com/techcrunch/startups" "http://feeds.feedburner.com/finsmes/cNHu" "http://feeds.feedburner.com/AVc" "http://blog.ycombinator.com/posts.atom" "http://kickass.to/movies/?rss=1" "http://feeds.feedburner.com/DroidLife" "http://feeds.feedburner.com/Torrentfreak" "http://feeds.feedburner.com/neowin-main" "http://rss.slashdot.org/Slashdot/slashdotMain?format=usm" "http://www.buzzfeed.com/tech.xml" "http://www.wonderhowto.com/rss.xml" "http://www.technologyreview.com/topnews.rss?from=feedstr" "http://electronista.feedsportal.com/c/34342/f/626172/index.rss" "http://news.softpedia.com/newsRSS/Security-5.xml" "http://feeds.feedburner.com/RedmondPie" "http://feeds.mashable.com/Mashable?format=xml" "http://www.technologyreview.com/stream/rss/" "http://www.anandtech.com/rss" "http://recode.net/feed/" "http://www.digitaltrends.com/feed/?key=f00edf6a58d2a8740e624dda919cab37" "http://adblockplus.org/atom/?section=blog" "http://feeds.gawker.com/gizmodo/vip" "http://feeds.gawker.com/valleywag/vip" "http://www.redferret.net/?feed=rss2" "http://feeds2.feedburner.com/GoogleOperatingSystem" "http://feedproxy.google.com/typepad/alleyinsider/silicon_alley_insider" "http://qz.com/re/technology/feed/" "http://feeds.feedblitz.com/gizmag&x=1" "http://feeds.feedburner.com/medianama" "http://valleywag.gawker.com/rss" "http://feeds.slashgear.com/slashgear?format=xml" "http://feeds.feedburner.com/entrepreneur/latest" "http://www.techmeme.com/index.xml" "http://www.informationisbeautiful.net/feed/" "http://www.boygeniusreport.com/feed/" "http://feeds.feedburner.com/osxdaily?format=xml" "http://feeds.feedburner.com/ServeTheHome" "http://feeds.feedburner.com/techreport/all" "http://feeds.feedburner.com/cultofmac/bFow" "http://www.nextpowerup.com/rss/" "http://feeds.feedburner.com/9To5Mac-MacAllDay" "http://www.geek.com/feed/" "http://www.macrumors.com/iphone/iphone.xml" "http://www.legitreviews.com/feed" "http://nakedsecurity.sophos.com/feed/" "http://feed.onstartups.com/onstartups" "http://feeds.venturebeat.com/Venturebeat" "http://www.planet-php.org/rss/" "http://www.phpied.com/feed/" "http://www.sitepoint.com/php/feed/" "http://systemsarchitect.net/feed/" "http://feeds.feedburner.com/symfony/blog" "http://feeds2.feedburner.com/Catswhocode" "http://www.codediesel.com/feed/" "http://feedpress.me/codeforest" "http://feeds2.feedburner.com/Paulundcouk" "http://phpdeveloper.org/feed" "http://php.net/news.rss" "http://feeds.dzone.com/zones/php" "http://us4.campaign-archive2.com/feed?u=135396dd31790e834e8629b45&id=af4af98573" "http://feeds.feedburner.com/PHPCommunityMagazine" "http://feeds.liip.ch/liip_blog" "http://feeds.feedburner.com/Codedevelopr" "http://feeds.feedburner.com/phpa" "http://blog.phpdeveloper.org/?feed=rss2" "http://www.killerphp.com/articles/feed/" "http://www.hindawi.com/journals/ahci/rss.xml" "http://feeds.feedburner.com/PuttingPeopleFirst" "http://feeds.feedburner.com/usabilitygeek" "http://feeds.feedburner.com/UXM" "http://feeds.feedburner.com/uxmovement" "http://feeds2.feedburner.com/Swissmiss" "http://www.uxmatters.com/index.xml" "http://feeds.feedburner.com/uxmastery" "http://www.uie.com/brainsparks/feed/" "http://feeds.feedburner.com/usabilityblog/rssfeed" "http://ux.stackexchange.com/feeds" "http://feeds.feedburner.com/uxbooth" "http://feeds.feedburner.com/MeasuringUsability" "http://distrowatch.com/news/dw.xml" "http://planet.ubuntu.com/rss20.xml" "http://www.debuntu.org/feed/" "http://seven.centos.org/feed/" "http://www.centosblog.com/feed/" "http://www.binarytides.com/feed/" "http://www.unixmen.com/feed/" "http://www.dotdeb.org/feed/" "http://blog.docker.com/feed/" "http://www.turnkeylinux.org/blog/feed" "http://feeds.feedburner.com/kriznadotcom" "http://feeds2.feedburner.com/SteveWellens" "http://magnusmartensson.com/feed" "http://feeds.feedburner.com/WebDevelopmentTipsTricksTrivia" "http://blogs.msdn.com/adonet/rss.xml" "http://jeffreypalermo.com/feed/" "http://blogs.msdn.com/camerons/rss.xml" "http://instagram-engineering.tumblr.com/rss" "http://blogs.clariusconsulting.net/kzu/feed/" "http://feeds2.feedburner.com/alvinashcraft" "http://www.helloandroid.com/rss.xml" "http://simpleprogrammer.com/feed/" "http://engineering.tumblr.com/rss" "http://feeds.feedburner.com/OdeToCode" "http://blog.cwa.me.uk/feed/" "http://channel9.msdn.com/Feeds/RSS/" "https://www.simple.com/engineering-rss.xml" "http://highscalability.com/rss.xml" "http://techblog.netflix.com/feeds/posts/default" "http://blog.michaelckennedy.net/feed/" "http://blog.pluralsight.com/feed/" "http://feeds.feedburner.com/RegularGeek" "http://blogs.endjin.com/author/alice-waddicor/feed/" "http://blog.stevensanderson.com/feed/" "http://weblogs.asp.net/scottgu/rss.aspx" "http://msopentech.com/feed/" "http://planet.debian.org/atom.xml" "http://www.ubuntu.com/rss.xml" "http://ectnews.com.feedsportal.com/c/34520/f/632001/index.rss" "http://www.linuxtoday.com/rss.xml" "http://www.addictivetips.com/category/ubuntu-linux-tips/feed/" "http://feeds.feedburner.com/Linuxaria_En?format=xml" "http://feeds2.feedburner.com/webupd8" "http://xmodulo.com/feed" "http://feeds.feedburner.com/tecmint" "http://www.upubuntu.com/feeds/posts/default" "http://mintguide.org/rss.xml" "http://insights.ubuntu.com/feed/" "http://www.linux.org/feeds/rss" "http://blog.linuxmint.com/?feed=rss2" "http://segfault.linuxmint.com/feed/" "http://www.tecmint.com/feed" "http://www.iwillfolo.com/feed/" "http://distrowatch.com/news/dww.xml" "http://news.softpedia.com/newsRSS/Linux-news-7.xml" "http://news.softpedia.com/newsRSS/Linux-Software-Reviews-132.xml" "http://www.ubuntugeek.com/feed/" "http://feeds.feedburner.com/Phoronix" "http://feeds.feedburner.com/d0od" "http://ostatic.com/blog/feed" "http://linuxgizmos.com/feed/" "http://feeds.feedburner.com/TheDigitalReader" "http://feeds.arstechnica.com/arstechnica/index" "http://syndication.thedailywtf.com/TheDailyWtf" "http://www.nytimes.com/services/xml/rss/nyt/Movies.xml" "http://feeds.feedburner.com/TechCrunch" "http://www.nytimes.com/services/xml/rss/nyt/Business.xml" "http://feeds.pcworld.com/pcworld/latestnews" "http://howtonode.org/feed.xml" "http://www.nytimes.com/services/xml/rss/nyt/Opinion.xml" "http://www.calculatedriskblog.com/feeds/posts/default" "https://news.ycombinator.com/rss" "http://feeds.feedburner.com/ProgrammableWeb" "http://www.techdirt.com/techdirt_rss.xml" "http://adobephotoshopsecrets.blogspot.com/feeds/posts/default" "http://gregmankiw.blogspot.com/feeds/posts/default" "http://feeds.guardian.co.uk/theguardian/technology/rss" "http://feeds.feedburner.com/HowstuffworksComputerstuffDailyRssFeed" "http://feeds.harvardbusiness.org/harvardbusiness" "http://www.aaronsw.com/2002/feeds/pgessays.rss" "http://www.washingtonpost.com/blogs/wonkblog/feed/" "http://feeds.labnol.org/labnol" "http://blog.teamtreehouse.com/feed" "http://www.theverge.com/rss/index.xml" "http://www.newyorker.com/services/rss/feeds/everything.xml" "http://feeds.feedburner.com/Ikeahacker" "http://www.alistapart.com/rss.xml" "http://www.mysqlperformanceblog.com/feed/atom/" "http://feeds.feedburner.com/blogspot/hsDu" "http://xkcd.com/rss.xml" "http://online.wsj.com/xml/rss/3_7454.xml" "http://www.rockieszingers.com/feed/" "http://breakdownsports.blogspot.com/feeds/posts/default" "http://sports.espn.go.com/espn/rss/nhl/news" "http://sports.yahoo.com/nhl/blog/puck_daddy/rss.xml" "http://www.secondcityhockey.com/atom/" "http://redwings.nhl.com/rss/news.xml" "http://www.thehockeynews.com/rss/all_categories.xml" "http://smartfootball.com/feed" "http://www.nhl.com/rss/features.xml" "http://grantland.com/features/feed/" "http://thehockeywriters.com/feed/" "http://grantland.com/the-triangle/feed/" "http://feeds.gawker.com/lifehacker/vip" "http://www.wikihow.com/feed.rss" "http://feeds.feedburner.com/brainpickings/rss" "http://l2mastery.com/feed" "http://feeds.poetryfoundation.org/PoetryMagazine" "http://www.stat.columbia.edu/~cook/movabletype/mlm/atom.xml" "http://languagelog.ldc.upenn.edu/nll/?feed=rss2" "http://www.doityourself.com/rss" "http://www.sciencemag.org/rss/current.xml" "http://feeds.feedburner.com/FlowingData" "http://www.towerofbabelfish.com/cms/feed/" "http://www.instructables.com/tag/type:instructable/rss.xml" "http://feeds.feedburner.com/OpenCulture" "http://feeds.feedburner.com/tedblog" "http://junkcharts.typepad.com/junk_charts/atom.xml" "http://www.thefunctionalart.com/feeds/posts/default" "http://feeds.feedburner.com/CoolInfographics" "http://feeds.feedburner.com/MrMoneyMustache" "http://feeds2.feedburner.com/TheArtOfManliness" "http://plato.stanford.edu/rss/sep.xml" "http://abeautifulmess.typepad.com/my_weblog/atom.xml" "http://www.apartmenttherapy.com/main/atom.xml" "http://sprachlogik.blogspot.com/feeds/posts/default" "http://newsrss.bbc.co.uk/rss/newsonline_world_edition/front_page/rss.xml" "http://feeds.wired.com/wired/index" "http://news.nationalgeographic.com/index.rss" "http://carnegieendowment.org/rss/solr/?fa=feeds" "http://feministing.com/feed/" "http://feeds.gawker.com/jezebel/full" "http://www.monocle.com/monocolumn/feed/" "http://feeds.libertarianism.org/Libertarianismdotorg" "http://www.lowyinterpreter.org/syndication.axd" "http://www.guardian.co.uk/rssfeed/0,,1,00.xml" "http://usfoodpolicy.blogspot.com/feeds/posts/default" "http://foreignpolicyblogs.com/feed/" "http://theinnovativeeducator.blogspot.com/feeds/posts/default" "http://webfeeds.brookings.edu/brookingsrss/programs/foreignpolicy?format=xml" "http://cyber.law.harvard.edu/news/feed" "http://feeds.feedburner.com/EdutopiaNewContent" "http://feeds.feedburner.com/reason/HitandRun" "http://fredrikdeboer.com/feed/" "http://feeds.reuters.com/reuters/topNews?irpc=69" "http://thediplomat.com/feed/atom/" "http://www.washingtonpost.com/wp-dyn/rss/metro/index.xml" "http://duckofminerva.blogspot.com/feeds/posts/default" "http://www.crisisgroup.org/en/RSS feeds/global.aspx" "http://www.fas.org/blog/secrecy/feed" "http://theeconomist.tumblr.com/rss" "http://www.edweek.org/ew/rss1.xml" "http://feeds.feedburner.com/reason/AllArticles" "http://blogs.wsj.com/washwire/feed/" "http://www.eastasiaforum.org/feed/" "http://blogs.the-american-interest.com/wrm/feed/" "http://www.brookings.edu/rss/LatestFromBrookings.aspx" "http://chronicle.com/section/News/6/rss" "http://feeds.washingtonpost.com/rss/rss_monkey-cage" "http://mises.org/dailyarticles.xml" "http://www.arnoldkling.com/blog/feed/" "http://www.fee.org/rss/articles" "http://nationalinterest.org/feed" "http://online.wsj.com/xml/rss/3_7205.xml" "http://feeds.feedburner.com/FPIF" "http://www.frontline.in/world-affairs/?service=rss" "http://feeds.feedburner.com/JulianSanchez" "http://freakonomics.blogs.nytimes.com/feed/" "http://www.realclearworld.com/index.xml" "http://www.cbo.gov/rss/latest10.xml" "http://pewresearch.org/rss.xml" "http://foreignpolicy.com/feed/" "http://feeds.feedburner.com/Eduwonk" "http://feeds.feedburner.com/learnliberty" "http://www.americanprogress.org/feed/" "http://csis.org/publications/rss/feed" "http://www.nytimes.com/services/xml/rss/nyt/HomePage.xml" "http://dartthrowingchimp.wordpress.com/feed/" "http://educationnext.org/feed/" "http://www.wilsoncenter.org/rss.xml" "http://feeds.feedburner.com/dipnote" "http://www.washingtonpost.com/wp-dyn/rss/politics/index.xml" "http://delong.typepad.com/sdj/atom.xml" "http://foreignaffairsmagazine.tumblr.com/rss" "http://feeds.feedburner.com/cato-unbound" "http://www.csis.org/media/feeds/csis.rss" "http://feeds.feedburner.com/washingtonmonthly/rss" "http://www.scotusblog.com/?feed=rss2&cat=72" "http://feeds.washingtonpost.com/rss/national" "http://feeds.cfr.org/cfr_main" "http://greatergreaterwashington.org/rss.xml" "http://www.policyinnovations.org/ideas/rss/feed.xml" "http://www.dcist.com/index.rdf" "http://www.foreignpolicy.com/node/feed" "http://googlepublicpolicy.blogspot.com/feeds/posts/default" "http://www.npr.org/rss/rss.php?id=1001" "http://wordsmith.org/awad/rss1.xml" "http://feeds.feedburner.com/oupblog" "http://www.thepolyglotdream.com/feed/" "http://www.languagehat.com/index.rdf" "http://www.oed.com/rss.xml" "http://feeds.feedburner.com/FrenchWord-a-day" "http://www.semrush.com/blog/feed/" "http://www.duetsblog.com/feed/" "http://www.cmo.com/content/cmo-com/home/exclusive/_jcr_content/parsys/list.feed" "http://feeds.inc.com/home/updates" "http://blogs.wsj.com/cmo/feed/" "http://seogadget.co.uk/feed/" "https://blogs.bing.com/webmaster/feed/" "http://pointblankseo.com/feed" "http://www.thesempost.com/feed/" "http://feeds.feedburner.com/AakerOnBrands" "http://www.annielytics.com/feed/" "http://feeds.feedburner.com/AcumenFundBlog" "http://www.seobythesea.com/feed/" "http://thestoryoftelling.com/feed/" "http://cognitiveseo.com/blog/feed/" "http://feeds.feedburner.com/BrandingStrategyInsider" "http://feeds.feedburner.com/ImediaConnectionAll?socialmodule" "http://feeds.harvardbusiness.org/harvardbusiness/" "http://www.stevenpressfield.com/feed/" "http://feeds.feedburner.com/seerinteractive/dndP" "http://feeds.feedburner.com/STC-Blog" "http://feeds.feedburner.com/seomoz" "http://feeds.searchengineland.com/searchengineland" "http://googlewebmastercentral.blogspot.com/atom.xml" "http://feeds.copyblogger.com/copyblogger" "http://feeds.feedburner.com/conversationmarketing/mrji" "http://feeds.feedburner.com/WordStreamBlog" "http://stevenpdennis.com/feed/" "http://feeds.feedburner.com/brandchannel" "http://consumerist.com/feed/" "http://feeds.feedburner.com/Makeuseof" "http://danariely.com/feed/" "http://feeds.feedburner.com/bakadesuyo" "http://feeds.feedburner.com/TheHappinessProject" "http://psychcentral.com/blog/feed/rss2/" "http://feeds.apartmenttherapy.com/apartmenttherapy/diy" "http://blogs.psychcentral.com/mindfulness/feed/" "http://feeds.feedburner.com/zenhabits" "http://feeds.feedburner.com/ThePositivityblog-PutSomePersonalDevelopmentAndPositivityIntoYourLife" "http://www.medicalnewstoday.com/rss/psychology-psychiatry.xml" "http://feeds.feedburner.com/The99Percent" "http://psychcentral.com/news/feed/" "http://www.lifehack.org/feed/" "http://truthonthemarket.com/feed/" "http://lawoftheland.wordpress.com/feed/" "http://lawprofessors.typepad.com/reproductive_rights/atom.xml" "http://lawprofessors.typepad.com/property/atom.xml" "http://lawprofessors.typepad.com/land_use/atom.xml" "http://thefederalist.com/feed/" "http://lawprofessors.typepad.com/antitrustprof_blog/atom.xml" "http://feeds.feedburner.com/abajournal/topstories" "http://lawprofessors.typepad.com/conlaw/atom.xml" "http://opiniojuris.org/feed/" "http://feeds.feedburner.com/LegalNomads" "http://overlawyered.com/feed/" "http://www.concurringopinions.com/feed" "http://www.antitrustlawblog.com/index.xml" "http://www.dorfonlaw.org/feeds/posts/default" "http://www.lawyersgunsmoneyblog.com/feed" "http://feeds.feedburner.com/AdjunctLawProfBlog" "http://justsecurity.org/feed/" "http://www.scotusblog.com/feed/" "http://www.popehat.com/feed/" "http://www.professorbainbridge.com/professorbainbridgecom/atom.xml" "http://prawfsblawg.blogs.com/prawfsblawg/atom.xml" "http://www.abovethelaw.com/index.xml" "http://classactionblawg.com/feed/" "http://www.law.com/rss/rss_newswire.xml" "http://www.thefacultylounge.org/atom.xml" "http://sentencing.typepad.com/sentencing_law_and_policy/atom.xml" "http://blogs.wsj.com/law/feed/" "http://legalhistoryblog.blogspot.com/feeds/posts/default" "http://www.libertylawsite.org/feed/" "http://feeds.feedburner.com/writetodone" "http://www.lettersofnote.com/feeds/posts/default" "http://feeds.feedburner.com/DailyWritingTips" "http://www.getrichslowly.org/blog/feed/" "http://www.washingtonpost.com/rss/homepage" "http://sethgodin.typepad.com/seths_blog/atom.xml" "http://feeds.feedburner.com/thesimpledollar" "http://www.npr.org/rss/rss.php?id=1013" "http://www.marginalrevolution.com/marginalrevolution/index.rdf" "http://mgoblog.com/fbfeed" "http://www.guardian.co.uk/news/datablog/rss" "http://www.merriam-webster.com/word/index.xml" "http://datascience101.wordpress.com/feed/" "http://dictionary.reference.com/wordoftheday/wotd.rss" "http://chartporn.org/feed/" "http://leiterreports.typepad.com/blog/atom.xml" "http://www.pw.org/rss.xml" "http://www.againstcronycapitalism.org/feed/" "http://www.e-ir.info/feed/" "http://www.washingtonpost.com/rss/opinions" "http://econlog.econlib.org/index.rdf" "http://www.rand.org/research_areas/international_affairs/findings.xml" "http://www.nytimes.com/services/xml/rss/nyt/Education.xml" "http://feeds.cato.org/CatoRecentOpeds" "http://www.gapminder.org/feed/" "http://feeds.feedburner.com/worldpoliticsreview" "http://feeds.washingtonpost.com/rss/rss_ezra-klein" "http://feeds.feedburner.com/InformationIsBeautiful" "http://www.washingtonpost.com/pb/people/daniel-w-drezner?resType=rss" "http://ilovecharts.tumblr.com/rss" "http://cafehayek.typepad.com/hayek/atom.xml" "http://feeds.feedburner.com/BleedingHeartLibertarians" "http://www.economist.com/blogs/graphicdetail/atom.xml" "http://economistsview.typepad.com/economistsview/atom.xml" "http://www.fivethirtyeight.com/feeds/posts/default" "http://blog.lumino.so/feed/" "http://feeds.feedburner.com/fluentin3months" "http://lsolum.typepad.com/legaltheory/atom.xml" "http://feeds.feedburner.com/JoshBlackmansBlog" "http://legalwritingpro.com/blog/feed/" "http://lawprofessors.typepad.com/whitecollarcrime_blog/atom.xml" "http://howappealing.law.com/atom.xml" "http://feeds.findlaw.com/FindLaw10th" "http://feeds.feedburner.com/volokh/mainfeed" "https://www.themarshallproject.org/rss/recent.rss" "http://blog.pacificlegal.org/feed/" "http://leiterlegalphilosophy.typepad.com/leiter/atom.xml" "http://leiterlawschool.typepad.com/leiter/atom.xml" "http://balkin.blogspot.com/feeds/posts/default" "http://lawprofessors.typepad.com/crimprof_blog/atom.xml" "http://indianareview.org/feed/" "http://brevitymag.com/feed/" "http://www.iwillteachyoutoberich.com/atom.xml" "http://www.readwriteweb.com/rss.xml" "http://feeds2.feedburner.com/thenextweb" "http://feeds.boingboing.net/boingboing/iBag" "http://www.theverge.com/rss/full.xml" "http://www.engadget.com/rss-full.xml" "http://feeds.cyberciti.biz/Nixcraft-LinuxFreebsdSolarisTipsTricks" "http://feeds.feedburner.com/ScottHanselman" "http://feeds.feedburner.com/unixmenhowtos" "http://www.linuxinsider.com/perl/syndication/rssfull.pl" "http://www.linuxjournal.com/node/feed" "http://lxer.com/module/newswire/headlines.rss" "http://bits.blogs.nytimes.com/feed/" "http://feeds.howtogeek.com/HowToGeek" "http://feeds.feedburner.com/37signals/beMH" "http://thebadprince.svbtle.com/feed" "http://www.howtoforge.com/node/feed" "http://feeds.mashable.com/Mashable" "http://googleblog.blogspot.com/atom.xml" "http://daringfireball.net/index.xml" "http://feeds.feedburner.com/DailyInfographic" "http://feeds.popularmechanics.com/pm/blogs/automotive_news" "http://larryferlazzo.edublogs.org/feed/" "http://simplystatistics.org/feed/" "http://thehill.com/blogs/hillicon-valley?format=feed&type=rss" "http://gigaom.com/feed/" "http://www.smashingmagazine.com/feed/" "http://www.geeksforgeeks.org/feed/rss" "http://www.theregister.co.uk/excerpts.rss" "http://planet.python.org/rss10.xml" "http://nlpers.blogspot.com/feeds/posts/default" "http://feeds2.feedburner.com/contrast/blog" "http://feeds.feedburner.com/maxvoltar" "http://feeds.feedburner.com/GoogleVenturesBlog" "http://www.elischiff.com/blog?format=RSS" "http://sachagreif.com/feed/" "http://blog.capwatkins.com/feed" "http://feeds.feedburner.com/DesignStaff" "http://www.arduino.cc/blog/?feed=rss2" "http://thehackernews.com/feeds/posts/default" "http://www.hackaday.com/rss.xml" "http://blog.makezine.com/feed" "http://www.adafruit.com/blog/feed/" "http://hackerspace.lifehacker.com/rss" "http://afterhours.lifehacker.com/rss" "http://www.pythonforbeginners.com/feed/" "http://feeds.feedburner.com/PyMOTW" "http://freepythontips.wordpress.com/feed/" "http://www.macdrifter.com/feed/" "http://www.leancrew.com/all-this/feed/" "http://feeds.feedburner.com/fastcompany/headlines" "http://feeds.feedburner.com/TheGeekStuff" "http://www.codeproject.com/webservices/articlerss.aspx?cat=1" "http://aspn.activestate.com/ASPN/Cookbook/Python/index_rss" "http://feeds.feedburner.com/ProgrammingLogic" "http://feeds.feedburner.com/codinghorror/" "http://feeds.feedburner.com/HighScalability" "http://feeds.feedburner.com/hackeducation" "http://www.johndcook.com/blog/feed/" "http://raspberry-python.blogspot.com/feeds/posts/default" "http://news.ycombinator.com/rss" "http://feeds.feedburner.com/geekbeatblog" "http://feeds.feedburner.com/PythonInsider" "http://www.techradar.com/rss" "http://feeds.feedburner.com/dailyjs" "http://nedbatchelder.com/blog/rss.xml" "http://googleappengine.blogspot.com/atom.xml" "http://raspi.tv/feed" "http://www.ruby-lang.org/en/feeds/news.rss" "http://ilearntechnology.com/?feed=rss2" "http://raspberrypihobbyist.blogspot.com/feeds/posts/default" "http://lucumr.pocoo.org/feed.atom" "http://planet.scipy.org/atom.xml" "http://codebetter.com/blogs/MainFeed.aspx" "http://www.macrumors.com/macrumors.xml" "http://feeds.haacked.com/haacked/" "http://feeds2.feedburner.com/stevelosh" "http://www.computerworld.com/index.rss" "http://www.dedoimedo.com/rss_feed.xml" "http://www.djangoproject.com/rss/weblog/" "http://feeds.feedburner.com/JavaCodeGeeks" "http://www.linux.com/rss/feeds.php" "http://feeds.feedburner.com/freetech4teachers/cGEY" "http://feeds.feedburner.com/nvie" "http://feeds.feedburner.com/longnow" "http://ericasadun.com/feed/" "http://www.djangoproject.com/rss/community/" "http://lwn.net/headlines/newrss" "http://blog.golang.org/feeds/posts/default" "http://www.weheartswift.com/feed/" "http://www.raspberrypi-spy.co.uk/feed/" "http://feeds.feedburner.com/DougHellmann" "http://martinfowler.com/bliki/bliki.atom" "http://www.raspberrypi.org/feed" "http://developer.apple.com/swift/blog/news.rss" "http://feeds.feedburner.com/CoolTools" "http://lambda-the-ultimate.org/rss.xml" "http://www.thinkgeek.com/thinkgeek.rss" "http://www.davescomputertips.com/feed/" "http://airspeedvelocity.net/feed/" "http://feeds.feedburner.com/appcoda" "http://blog.ianbicking.org/feeds/new_pages.xml" "http://feeds.feedburner.com/TheMouseVsThePython" "http://iheartorganizing.blogspot.com/feeds/posts/default" "http://eli.thegreenplace.net/feed/" "http://venturebeat.com/feed/" "http://feeds.feedburner.com/oreilly/radar/atom" "http://linuxtoday.com/backend/biglt.rss" "https://realpython.com/atom.xml" "http://littlebigdetails.com/rss" "http://kivy.org/planet/feed/" "http://www.etsy.com/storque/feeds/latest/" "http://feeds.feedburner.com/nettuts" "http://feeds.gawker.com/gizmodo/full" "http://feeds.feedburner.com/Edudemic" "http://feeds.washingtonpost.com/rss/business/technology" "http://natashatherobot.com/feed/" "https://github.com/blog.atom" "https://medium.com/feed/swift-programming" "http://hackaday.com/tag/raspberry-pi/feed/" "http://www.nytimes.com/services/xml/rss/nyt/Science.xml" "http://newsrss.bbc.co.uk/rss/newsonline_world_edition/science/nature/rss.xml" "http://feeds.gawker.com/io9/full" "http://www.npr.org/rss/rss.php?id=1007" "http://www.popsci.com/rss.xml" "http://rss.sciam.com/ScientificAmerican-Global" "http://www.sciencedaily.com/newsfeed.xml" "http://feeds.feedburner.com/bigthink/main" "http://youarenotsosmart.com/feed/" "http://www.futurity.org/feed/" "http://blogs.wsj.com/numbersguy/feed/" "http://downloads.bbc.co.uk/podcasts/radio4/moreorless/rss.xml" "http://www.nature.com/nature/current_issue/rss" "http://feeds.feedburner.com/Mindblog" "http://feeds.feedblitz.com/neuromarketing" "http://feeds.feedburner.com/DiscoveryNews-Top-Stories" "http://freakonometrics.hypotheses.org/feed" "http://www.mindhacks.com/atom.xml" "http://www.socialpsychology.org/headlines.rss" "http://psychcentral.com/lib/feed/" "http://neurocritic.blogspot.com/feeds/posts/default" "http://bps-research-digest.blogspot.com/feeds/posts/default" "http://brainblogger.com/feed/" "http://thebeautifulbrain.com/feed/" "http://www.sciencedaily.com/rss/mind_brain/psychology.xml" "http://www.psychologytoday.com/front/feed" "http://www.psychologicalscience.org/index.php/feed" "http://topics.nytimes.com/top/news/health/diseasesconditionsandhealthtopics/psychology_and_psychologists/?rss=1" "http://feeds.feedburner.com/PsychologyBlog" "http://planetr.stderr.org/atom.xml" "http://www.datatau.com/rss" "http://feeds.feedburner.com/RBloggers" "http://journal.r-project.org/rss.atom" "http://understandinguncertainty.org/rss.xml" "http://feeds.feedburner.com/statsblogs" "http://junkcharts.typepad.com/numbersruleyourworld/atom.xml" "http://blog.kaggle.com/feed/" "http://www.nasa.gov/rss/breaking_news.rss" "http://www.iflscience.com/rss.xml" "http://apod.nasa.gov/apod.rss" "http://www.physorg.com/rss-feed/" "http://allendowney.blogspot.com/feeds/posts/default" "http://feeds.newscientist.com/science-news" "http://www.npr.org/rss/rss.php?id=1032" "http://www.nytimes.com/services/xml/rss/nyt/Books.xml" "http://www.theparisreview.org/blog/feed/" "http://pitchfork.com/rss/reviews/albums/" "http://feeds.feedburner.com/thr/reviews/film" "http://www.telegraph.co.uk/culture/film/filmreviews/rss" "http://feeds.feedburner.com/nybooks" "http://www.phdcomics.com/gradfeed.php" "http://www.guardian.co.uk/rssfeed/0,,10,00.xml" "http://www.lrb.co.uk/homerss.xml" "http://www.overcomingbias.com/feed" "http://www.theory-talks.org/feeds/posts/default" "http://publicreason.net/feed/" "http://lesswrong.com/.rss" "http://blog.practicalethics.ox.ac.uk/feed/" "http://alexanderpruss.blogspot.com/feeds/posts/default" "http://peasoup.typepad.com/peasoup/atom.xml" "http://pixnaps.blogspot.com/feeds/posts/default" "http://www.iep.utm.edu/feed/" "http://philosophicaldisquisitions.blogspot.com/feeds/posts/default")) t)
 '(fill-column 120)
 '(flycheck-global-modes (quote (elisp-mode)) t)
 '(fringe-mode 0 nil (fringe))
 '(global-linum-mode nil)
 '(global-visual-fill-column-mode t)
 '(history-length 500)
 '(icomplete-mode t)
 '(icomplete-show-matches-on-no-input t)
 '(inhibit-default-init t)
 '(initial-buffer-choice "~/notes/todo.org")
 '(initial-major-mode (quote org-mode))
 '(initial-scratch-message nil)
 '(keyboard-coding-system (quote windows-1252-unix))
 '(line-number-mode nil)
 '(linum-delay t)
 '(linum-eager nil)
 '(max-specpdl-size 1335)
 '(minibuffer-auto-raise nil)
 '(minibuffer-prompt-properties
   (quote
    (read-only nil cursor-intangible t face minibuffer-prompt)))
 '(org-M-RET-may-split-line nil)
 '(org-adapt-indentation t)
 '(org-agenda-add-entry-text-maxlines 5)
 '(org-agenda-columns-add-appointments-to-effort-sum t)
 '(org-agenda-custom-commands
   (quote
    (("n,t" "Agenda and all TODOs"
      ((agenda ""
	       ((org-agenda-skip-function
		 (quote
		  (org-agenda-skip-entry-if
		   (quote todo)
		   (quote
		    ("WAITING" "DELEGATED")))))))
       (alltodo ""
		((org-agenda-skip-function
		  (quote
		   (org-agenda-skip-entry-if
		    (quote todo)
		    (quote
		     ("WAITING" "DELEGATED")))))
		 (org-agenda-tag-filter-preset
		  (quote
		   ("+urgent")))))
       (alltodo ""
		((org-agenda-overriding-header ""))))
      nil))))
 '(org-agenda-files (quote ("~/notes/todo.org" "~/notes/wbblog.org")))
 '(org-agenda-inhibit-startup nil)
 '(org-agenda-persistent-filter t)
 '(org-agenda-remove-tags t)
 '(org-agenda-show-inherited-tags nil)
 '(org-agenda-skip-archived-trees t)
 '(org-agenda-skip-deadline-prewarning-if-scheduled nil)
 '(org-agenda-skip-timestamp-if-deadline-is-shown t)
 '(org-agenda-skip-unavailable-files t)
 '(org-agenda-sorting-strategy (quote (priority-down)))
 '(org-agenda-tags-column -100)
 '(org-agenda-tags-todo-honor-ignore-options t)
 '(org-agenda-todo-ignore-scheduled nil)
 '(org-agenda-todo-keyword-format "%-10s")
 '(org-archive-location "%s_archive::~/Dropbox/notes/archive")
 '(org-capture-templates
   (quote
    (("a" "Add Task" entry
      (file+headline "~/doc/tasks/todo.txt" "Inbox")
      "* TODO %?
SCHEDULED: %t
:PROPERTIES:
:ID:       %(shell-command-to-string \"uuidgen\"):CREATED:  %U
:END:" :prepend t)
     ("n" "Note" entry
      (file "~/doc/tasks/notes.txt")
      "* NOTE %?
:PROPERTIES:
:ID:       %(shell-command-to-string \"uuidgen\"):CREATED:  %U
:END:" :prepend t)
     ("c" "Calendar" entry
      (file+headline "~/doc/tasks/todo.txt" "Inbox")
      "* APPT %?
SCHEDULED: %t
:PROPERTIES:
:ID:       %(shell-command-to-string \"uuidgen\"):CREATED:  %U
:END:" :prepend t)
     ("t" "Add Task" entry
      (file+headline "~/doc/tasks/todo.txt" "Inbox")
      "* TODO %?
SCHEDULED: %t
:PROPERTIES:
:ID:       %(shell-command-to-string \"uuidgen\"):CREATED:  %U
:END:" :prepend t))) t)
 '(org-complete-tags-always-offer-all-agenda-tags t)
 '(org-custom-properties (quote ("DEADLINE" "EFFORT")))
 '(org-directory "~/Dropbox/notes")
 '(org-enforce-todo-dependencies t)
 '(org-export-backends
   (quote
    (ascii html icalendar latex md org deck freemind rss)))
 '(org-export-coding-system (quote utf-8))
 '(org-fontify-done-headline t)
 '(org-hidden-keywords (quote (author date email title)))
 '(org-hierarchical-todo-statistics nil)
 '(org-pretty-entities t)
 '(org-return-follows-link nil)
 '(org-startup-folded t)
 '(org-startup-indented t)
 '(org-tag-alist
   (quote
    (("law" . 108)
     ("errand" . 101)
     ("WB" . 98)
     ("tech" . 116)
     ("social" . 115)
     ("writing" . 119)
     ("music" . 109)
     ("organization" . 111)
     ("finance" . 102)
     ("health" . 104)
     ("travel" . 118)
     ("reading" . 114)
     ("phone" . 112)
     ("movie" . 109)
     ("computer" . 99))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "NEXT(n)" "|" "WAITING(w)" "DELEGATED(d)" "DONE(x)" "SOMEDAY(s)"))))
 '(org-trello-current-prefix-keybinding "C-c o")
 '(overflow-newline-into-fringe nil)
 '(read-file-name-completion-ignore-case t)
 '(savehist-additional-variables nil t)
 '(savehist-autosave-interval 150 t)
 '(scalable-fonts-allowed t)
 '(selection-coding-system (quote utf-8))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.office365.com" t)
 '(smtpmail-smtp-service 587 t)
 '(visual-fill-column-width nil)
 '(w32-allow-system-shell t t)
 '(w32-fixed-font-alist
   (quote
    ("Font menu"
     ("Misc"
      ("fixed" "Fixedsys")
      ("")
      ("Terminal 5x4" "-*-Terminal-normal-r-*-*-*-45-*-*-c-40-*-oem")
      ("Terminal 6x8" "-*-Terminal-normal-r-*-*-*-60-*-*-c-80-*-oem")
      ("Terminal 9x5" "-*-Terminal-normal-r-*-*-*-90-*-*-c-50-*-oem")
      ("Terminal 9x7" "-*-Terminal-normal-r-*-*-*-90-*-*-c-70-*-oem")
      ("Terminal 9x8" "-*-Terminal-normal-r-*-*-*-90-*-*-c-80-*-oem")
      ("Terminal 12x12" "-*-Terminal-normal-r-*-*-*-120-*-*-c-120-*-oem")
      ("Terminal 14x10" "-*-Terminal-normal-r-*-*-*-135-*-*-c-100-*-oem")
      ("Terminal 6x6 Bold" "-*-Terminal-bold-r-*-*-*-60-*-*-c-60-*-oem")
      ("")
      ("Lucida Sans Typewriter.8" "-*-Lucida Sans Typewriter-normal-r-*-*-11-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.9" "-*-Lucida Sans Typewriter-normal-r-*-*-12-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.10" "-*-Lucida Sans Typewriter-normal-r-*-*-13-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.11" "-*-Lucida Sans Typewriter-normal-r-*-*-15-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.12" "-*-Lucida Sans Typewriter-normal-r-*-*-16-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.8 Bold" "-*-Lucida Sans Typewriter-semibold-r-*-*-11-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.9 Bold" "-*-Lucida Sans Typewriter-semibold-r-*-*-12-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.10 Bold" "-*-Lucida Sans Typewriter-semibold-r-*-*-13-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.11 Bold" "-*-Lucida Sans Typewriter-semibold-r-*-*-15-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.12 Bold" "-*-Lucida Sans Typewriter-semibold-r-*-*-16-*-*-*-c-*-iso8859-1"))
     ("Courier"
      ("Courier 10x8" "-*-Courier-*normal-r-*-*-*-97-*-*-c-80-iso8859-1")
      ("Courier 12x9" "-*-Courier-*normal-r-*-*-*-120-*-*-c-90-iso8859-1")
      ("Courier 15x12" "-*-Courier-*normal-r-*-*-*-150-*-*-c-120-iso8859-1")
      ("")
      ("8" "-*-Courier New-normal-r-*-*-11-*-*-*-c-*-iso8859-1")
      ("9" "-*-Courier New-normal-r-*-*-12-*-*-*-c-*-iso8859-1")
      ("10" "-*-Courier New-normal-r-*-*-13-*-*-*-c-*-iso8859-1")
      ("11" "-*-Courier New-normal-r-*-*-15-*-*-*-c-*-iso8859-1")
      ("12" "-*-Courier New-normal-r-*-*-16-*-*-*-c-*-iso8859-1")
      ("8 bold" "-*-Courier New-bold-r-*-*-11-*-*-*-c-*-iso8859-1")
      ("9 bold" "-*-Courier New-bold-r-*-*-12-*-*-*-c-*-iso8859-1")
      ("10 bold" "-*-Courier New-bold-r-*-*-13-*-*-*-c-*-iso8859-1")
      ("11 bold" "-*-Courier New-bold-r-*-*-15-*-*-*-c-*-iso8859-1")
      ("12 bold" "-*-Courier New-bold-r-*-*-16-*-*-*-c-*-iso8859-1")
      ("8 italic" "-*-Courier New-normal-i-*-*-11-*-*-*-c-*-iso8859-1")
      ("9 italic" "-*-Courier New-normal-i-*-*-12-*-*-*-c-*-iso8859-1")
      ("10 italic" "-*-Courier New-normal-i-*-*-13-*-*-*-c-*-iso8859-1")
      ("11 italic" "-*-Courier New-normal-i-*-*-15-*-*-*-c-*-iso8859-1")
      ("12 italic" "-*-Courier New-normal-i-*-*-16-*-*-*-c-*-iso8859-1")
      ("8 bold italic" "-*-Courier New-bold-i-*-*-11-*-*-*-c-*-iso8859-1")
      ("9 bold italic" "-*-Courier New-bold-i-*-*-12-*-*-*-c-*-iso8859-1")
      ("10 bold italic" "-*-Courier New-bold-i-*-*-13-*-*-*-c-*-iso8859-1")
      ("11 bold italic" "-*-Courier New-bold-i-*-*-15-*-*-*-c-*-iso8859-1")
      ("12 bold italic" "-*-Courier New-bold-i-*-*-16-*-*-*-c-*-iso8859-1")))) t)
 '(warning-minimum-level :error)
 '(warning-minimum-log-level :debug)
 '(word-wrap t))
 '(package-selected-packages
	 (quote
		(miniedit smartscan helm-swoop guide-key smart-mode-line helm-descbinds helm auto-compile use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(font-lock-comment-face ((t (:foreground "peach puff" :slant italic :height 1.0))))
 '(font-lock-keyword-face ((t (:foreground "light sea green" :weight bold :height 1.3 :family "Inconsolata"))))
 '(linum ((t (:inherit (shadow default) :width ultra-condensed))))
 '(menu ((t (:background "gray30" :foreground "snow"))))
 '(org-default ((t (:inherit (default default) :height 1.3 :family "Inconsolata"))))
 '(org-footnote ((t (:foreground "light steel blue" :underline t :weight bold :family "Palatino"))))
 '(org-level-2 ((t (:inherit outline-2 :box nil :family "Inconsolata"))))
 '(org-priority ((t (:inherit font-lock-keyword-face :height 1.2 :family "Inconsolata"))))
 '(org-table ((t (:foreground "LightSkyBlue" :height 1.0 :family "Inconsolata"))))
 '(org-todo ((t (:foreground "yellow" :weight bold :height 1.3 :family "Inconsolata"))))
 '(outline-2 ((t (:foreground "SeaGreen1" :weight bold :height 1.3 :family "Inconsolata"))))
 '(variable-pitch ((t (:height 1.5 :family "Inconsolata")))))
=======





>>>>>>> 622475a80778df7af22b7a364a2528f63b5c16df
