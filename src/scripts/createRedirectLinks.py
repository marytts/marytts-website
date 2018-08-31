import os
import re

downloadDir = "src/site/resources/download"
htaccessFile = "src/site/assets/.htaccess"

template = "Redirect 307 /download/5.1/marytts-5.1.zip https://github.com/marytts/marytts/releases/download/v5.1/marytts-5.1.zip"

# remove file if already exists
try:
    os.remove(htaccessFile)
except OSError:
    pass

with open(htaccessFile, "a") as f:
    for subdir, dirs, files in os.walk(downloadDir):
        print(files)
        for file in files:
            fullPath = os.path.join(subdir, file)
            # strip src/site/resources from path
            allDirs = fullPath.split("/")
            # get version if available
            hasVersion = (len(allDirs) == 6)
            if file.endswith((".xml", ".html")):
                continue
            elif hasVersion:
                version = allDirs[4]
                strippedPath = "/" + allDirs[3] + "/" + version + "/" + allDirs[5]
                if version == "voices":
                    if file.endswith(".zip"):
                        print(str(file))
                        repoName = re.sub('-3\..+?\.zip', '', file)
                        if file == "mbrola-de1-3.1.0.zip":
                            version = "3.1.0"
                        else:
                            version = "3.5.0"
                        print(repoName)
                        gitHubURL = "https://github.com/marytts/"+ repoName + "/releases/download/" + version + "/" + str(file)
                elif file.startswith("voice"):
                    print(str(file))
                    repoName = re.sub('-5.*?\.zip', '', file)
                    gitHubURL = "https://github.com/marytts/"+ repoName + "/releases/download/v" + version + "/" + str(file)
                elif file.startswith("mary-"):
                    print(str(file))
                    repoName = re.sub('-4.*?\.zip', '', file)
                    repoName = re.sub('mary-', 'voice-', repoName)
                    gitHubURL = "https://github.com/marytts/"+  repoName + "/releases/download/v" + version + "/" + str(file)
                else:
                    gitHubURL = "https://github.com/marytts/marytts/releases/download/v" + version + "/" + str(file)
                # if version != ("v"):
                print(gitHubURL)

                # put path and url in quotes to catch any space problems
                htaccessLine = "Redirect 307 \"" + strippedPath + "\" \"" + gitHubURL + "\""
                f.write(htaccessLine + "\n")
            else:
                # if it is a mary-install jar
                if file.startswith("mary-install"):
                    print(file)
                    strippedPath = "/" + allDirs[3] + "/" + allDirs[4]

                    file = re.sub('-', '_', file)
                #      extract version number from file name
                #     version = re.sub('\.pack\d+.jar', '', allDirs[4].lstrip("mary-install-"))
                    version = "3.6.0"
                    gitHubURL = "https://github.com/marytts/marytts/releases/download/v" + version + "/" + str(file)

                    print(version)
                    print(gitHubURL)
                    # put path and url in quotes to catch any space problems
                    htaccessLine = "Redirect 307 \"" + strippedPath + "\" \"" + gitHubURL + "\""
                    f.write(htaccessLine + "\n")
                    # if it is a mary-install jar
                elif file.startswith("mary-standalone"):
                    print(file)
                    strippedPath = "/" + allDirs[3] + "/" + allDirs[4]

                    file = re.sub('-', '_', file)
                    version = "3.6.0"
                    gitHubURL = "https://github.com/marytts/marytts/releases/download/v" + version + "/" + str(file)

                    print(version)
                    print(gitHubURL)
                    # put path and url in quotes to catch any space problems
                    htaccessLine = "Redirect 307 \"" + strippedPath + "\" \"" + gitHubURL + "\""
                    f.write(htaccessLine + "\n")
                else:
                    continue
