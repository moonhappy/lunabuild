local YML_GITHLAB = [[
# This file is a template, and might need editing before it works on your project.
# Lifted from: https://about.gitlab.com/2016/03/10/setting-up-gitlab-ci-for-ios-projects/
# This file assumes an own GitLab CI runner, setup on an OS X system.
stages:
  - build

variables:
  GIT_SUBMODULE_STRATEGY: recursive

before_script:
  - apt-get update
  - apt-get install -qq --no-install-recommends unzip zip wget lua

build_project:
  stage: build
  script:
    - ./lunaci.build.lua
  artifacts:
    paths:
      - dist/*.zip
      - dist/*.love
#    - xcodebuild clean -project <%= proj_name %>.xcodeproj -scheme SchemeName | xcpretty
#    - xcodebuild test -project <%= proj_name %>.xcodeproj -scheme SchemeName -destination 'platform=iOS Simulator,name=iPhone 6s,OS=9.2' | xcpretty -s
#  tags:
#    - ios_9-2
#    - xcode_7-2
#    - osx_10-11

# archive_project:
#   stage: archive
#   script:
#     - echo "Archiving..."
# #    - xcodebuild clean archive -archivePath build/<%= proj_name %> -scheme SchemeName
# #    - xcodebuild -exportArchive -exportFormat ipa -archivePath "build/<%= proj_name %>.xcarchive" -exportPath "build/<%= proj_name %>.ipa" -exportProvisioningProfile "ProvisioningProfileName"
#   only:
#     - master
#   artifacts:
# #  tags:
# #    - ios_9-2
# #    - xcode_7-2
# #    - osx_10-11

]]

return YML_GITHLAB
