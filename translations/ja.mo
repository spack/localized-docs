Þ    %      D  5   l      @     A     J     Y     e     l     y               ¨     ±     Å     Ò      ç            h   -       q   ¦       E   +     q     ~          ¡  L  ©     ö       	     4   "    W     [	  	   o	  t   y	     î	     ý	     
  c  
     r               «     ²  '   È     ð                ,     ?  !   F  H   h     ±     Å      Ò     s  §        (  g   8        -   °  	   Þ     è  ì  ø     å     û       Y   -  «        3     T  ·   g          .     >                       	   $                      "                                     %   
                                                       !                                #    API Docs Basic Settings Basic Usage Basics Build Caches Build Customization Category Command Reference Commands Configuration Files Contributing Custom Build Systems Custom versions & configurations Environment Modules Feature Overview Get spack from the `github repository <https://github.com/spack/spack>`_ and install your first package: Getting Started If you're new to spack and want to start using it, see :doc:`getting_started`, or refer to the full manual below. Indices and tables It is recommended that the following be put in your ``.bashrc`` file: Known Issues Listing available packages Mirrors Modules Most importantly, Spack is *simple*.  It offers a simple *spec* syntax so that users can specify versions and configuration options concisely.  Spack is also simple for package authors: package files are written in pure Python, and specs allow package authors to maintain a single file for many different builds of the same package. Package List Package Repositories Reference See the :doc:`features` for examples and highlights. Spack is a package management tool designed to support multiple versions and configurations of software on a wide variety of platforms and environments.  It was designed for large supercomputing centers, where many users and application teams share common installations of software on clusters with exotic architectures, using libraries that do not have a standard ABI.  Spack is non-destructive: installing a new version does not break existing installations, so many configurations can coexist on the same system. Tutorial: Spack 101 Workflows `These are docs for the Spack package manager. For sphere packing, see` `pyspack <https://pyspack.readthedocs.io>`_. ``spack list`` package packages Project-Id-Version: Spack 0.12
Report-Msgid-Bugs-To: maintainers@spack.io
POT-Creation-Date: 2019-05-27 13:44-0700
PO-Revision-Date: 2019-05-22 02:25-0700
Last-Translator: Automatically generated
Language-Team: none
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
 APIãã­ã¥ã¡ã³ã åºæ¬è¨­å® åºæ¬çãªä½¿ãæ¹ å¨è¬ ãã«ãã­ã£ã·ã¥ ãã«ãã«ã¹ã¿ãã¤ã¼ã¼ã·ã§ã³ ã«ãã´ãªã¼ ã³ãã³ããªãã¡ã¬ã³ã¹ ã³ãã³ã è¨­å®ãã¡ã¤ã« è²¢ç® ã«ã¹ã¿ã ãã«ãã·ã¹ãã  ãã¼ã¸ã§ã³ã¨ã³ã³ãã£ã®ã¥ã¬ã¼ã·ã§ã³ã®ã«ã¹ã¿ãã¤ãº Environment Modules æ©è½æ¦è¦ ä»¥ä¸ã®æ¹æ³ã§Spackã `github <https://github.com/spack/spack>`_ ããå¥æããæåã®ããã±ã¼ã¸ãã¤ã³ã¹ãã¼ã«ãã¦ã¿ã¦ãã ããã ã¯ããã« Spackãå©ç¨ããã®ãåãã¦ã®å ´åã¯ã :doc:`getting_started` ããåç§ãã ããããããã¯ãä¸è¨ã®ããã¥ã¢ã«ããåç§ãã ããã ç®æ¬¡ã¨ç´¢å¼ ãå©ç¨ä¸­ã®ç°å¢ã® ``.bashrc`` ãã¡ã¤ã«ã«ä»¥ä¸ãè¿½å ãããã¨ããå§ããã¾ãã æ¢ç¥ã®åé¡ å©ç¨å¯è½ãªããã±ã¼ã¸ã®ä¸è¦§è¡¨ç¤º ãã©ã¼ ã¢ã¸ã¥ã¼ã« Spackãã·ã³ãã«ã§ãããã¨ã¯ãæãéè¦ãªç¹ã§ããSpackã¦ã¼ã¶ã¯ãã·ã³ãã«ãªææ³ã§å©ç¨ãããã½ããã¦ã§ã¢ã®ãã¼ã¸ã§ã³ãè¨­å®ããªãã·ã§ã³ç­ãæå®ã§ãã¾ããã¾ããSpackã¯ãããã±ã¼ã¸ã³ã°ãè¡ãã¦ã¼ã¶ã«ã¨ã£ã¦ãã·ã³ãã«ã§ããããã±ã¼ã¸ãã¡ã¤ã«ã¯ç´ç²ãªPythonã§è¨è¿°ããã¦ãã¦ãå¤ç¨®å¤æ§ãªãã«ãæ¹æ³ãè¨è¼ããå ´åã§ããæ´æ°ããã®ã¯åä¸ã®ãã¡ã¤ã«ã§ãã ããã±ã¼ã¸ä¸è¦§ ããã±ã¼ã¸ã¬ãã¸ããª ãªãã¡ã¬ã³ã¹ ä½¿ç¨ä¾ã¨ãã¤ã©ã¤ãã«ã¤ãã¦ã¯ã :doc:`features` ããåç§ãã ããã Spackã¯æ§ããªãã©ãããã©ã¼ã ãã·ã¹ãã ç°å¢ã«ã¤ã³ã¹ãã¼ã«ããã¦ããã½ããã¦ã§ã¢ã®è¤æ°ã®ãã¼ã¸ã§ã³ãè¨­å®ãªã©ãç®¡çããããã«è¨­è¨ããã¦ãã¾ããSpackã¯ãã¹ã¼ãã¼ã³ã³ãã¥ã¼ã¿ã·ã¹ãã ãéç¨ããã»ã³ã¿ã¼ãªã©ã§ã®å©ç¨ãæ³å®ãã¦è¨­è¨ãã¦ãã¾ããå¤§è¦æ¨¡ãªã»ã³ã¿ã¼ãªã©ã§ã¯ãå¤ãã®ã¦ã¼ã¶ããã¼ã ãã·ã¹ãã ã«ã¤ã³ã¹ãã¼ã«ããã¦ããã½ããã¦ã§ã¢ãå©ç¨ããããã½ããã¦ã§ã¢ãå±æããããã¦ãã¾ããããããã¯ãæ§ãã®ã¯ã©ã¹ã¿ä¸ã§æ¨æºçãªABI(Application Binary Interface)ãæããªãã©ã¤ãã©ãªãå©ç¨ãã¦ãã¾ããSpackãå©ç¨ãããã¨ã§ãæ°ãããã¼ã¸ã§ã³ã®ã½ããã¦ã§ã¢ãã¤ã³ã¹ãã¼ã«ãã¦ãæ¢å­ã®ç°å¢ãç ´å£ãããã¨ãªããåãã·ã¹ãã ä¸ã«å¤æ°ã®æ§æãå±å­ããããã¨ãã§ãã¾ãã ãã¥ã¼ããªã¢ã«: Spack 101 ã¯ã¼ã¯ãã­ã¼ æ¬ãµã¤ãã§ã¯Spackã«é¢é£ããææ¸ãå¬éãã¦ãã¾ããSphere packing(çåå¡«)ã«ã¤ãã¦ã¯ `pyspack <https://pyspack.readthedocs.io>`_ ããåç§ãã ããã ``spack list`` ããã±ã¼ã¸ ããã±ã¼ã¸ 