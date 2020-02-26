class ChajrATv100 < Formula
  desc "chajr (pronounced chair) is a bash script for getting Css, Html, And Javascript Ready."
  homepage "https://github.com/DavidStinson/chajr"
  url "https://github.com/DavidStinson/chajr/archive/v1.0.0.tar.gz"
  sha256 "28f420232779c39c62464b98051b8f74490f8607fa00edef31332dcc8bfa7731"

  bottle :unneeded

  def install
    bin.install "chajr"
  end

  def post_install
    if !(File.exist?((etc/"chajr/readmeTemplate.txt"))) then
      (etc/"chajr/readmeTemplate.txt").write readme_template
    end
    if !(File.exist?((etc/"chajr/htmlTemplate.txt"))) then
      (etc/"chajr/htmlTemplate.txt").write html_template
    end
    if !(File.exist?((etc/"chajr/cssTemplate.txt"))) then
      (etc/"chajr/cssTemplate.txt").write css_template
    end
    if !(File.exist?((etc/"chajr/jsTemplate.txt"))) then
      (etc/"chajr/jsTemplate.txt").write js_template
    end
  end
  
  def readme_template; <<~EOS
  EOS
  end

  def html_template; <<~EOS
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <link rel="stylesheet" href="css/main.css"/>
      <script defer src="js/main.js"></script>
      <title>Title</title>
    </head>
    <body>
      
    </body>
    </html>
  EOS
  end

  def css_template; <<~EOS
  EOS
  end

  def js_template; <<~EOS
    /*------------------------- Variables and Constants -------------------------*/



    /*------------------------ Classes and Objects ------------------------------*/



    /*---------------------------------- Cache ----------------------------------*/



    /*----------------------------- Event Listeners -----------------------------*/



    /*-------------------------------- Functions --------------------------------*/

  EOS
  end

end
