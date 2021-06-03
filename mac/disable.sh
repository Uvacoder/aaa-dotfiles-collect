#!/bin/sh

# to make execurable
# chmod +x disable.sh

# ------------------------------------------------------------------------------
# 16 - DISABLE SPINDUMP, TAILSPIND ANS CRASHREPORTERSUPPORTHELPER --------------
sudo -v

# sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.CrashReporterSupportHelper.plist
# sudo mv /System/Library/LaunchDaemons/com.apple.CrashReporterSupportHelper.plist /System/Library/LaunchDaemons/com.apple.CrashReporterSupportHelper.plist.bak

sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.spindump.plist
sudo mv /System/Library/LaunchDaemons/com.apple.spindump.plist /System/Library/LaunchDaemons/com.apple.spindump.plist.bak

sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.tailspind.plist
sudo mv /System/Library/LaunchDaemons/com.apple.tailspind.plist /System/Library/LaunchDaemons/com.apple.tailspind.plist.bak

# sudo launchctl unload -w /system/library/launchdaemons/com.apple.metadata.mds.plist
# sudo mv /system/library/launchdaemons/com.apple.metadata.mds.plist /system/library/launchdaemons/com.apple.metadata.mds.plist.bak

# 19 - AGENTS ------------------------------------------------------------------
launchctl unload -w /System/Library/LaunchAgents/com.apple.CalendarAgent.plist
sudo mv /System/Library/LaunchAgents/com.apple.CalendarAgent.plist  /System/Library/LaunchAgents/com.apple.CalendarAgent.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.soagent.plist
sudo mv /System/Library/LaunchAgents/com.apple.soagent.plist  /System/Library/LaunchAgents/com.apple.soagent.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.cloudphotosd.plist
sudo mv /System/Library/LaunchAgents/com.apple.cloudphotosd.plist  /System/Library/LaunchAgents/com.apple.cloudphotosd.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.AddressBook.ContactsAccountsService.plist
sudo mv /System/Library/LaunchAgents/com.apple.AddressBook.ContactsAccountsService.plist /System/Library/LaunchAgents/com.apple.AddressBook.ContactsAccountsService.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.contacts.donation-agent.plist
sudo mv /System/Library/LaunchAgents/com.apple.contacts.donation-agent.plist /System/Library/LaunchAgents/com.apple.contacts.donation-agent.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.AirPlayUIAgent.plist
sudo mv /System/Library/LaunchAgents/com.apple.AirPlayUIAgent.plist /System/Library/LaunchAgents/com.apple.AirPlayUIAgent.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.imagent.plist
sudo mv /System/Library/LaunchAgents/com.apple.imagent.plist /System/Library/LaunchAgents/com.apple.imagent.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.CallHistorySyncHelper.plist
sudo mv /System/Library/LaunchAgents/com.apple.CallHistorySyncHelper.plist /System/Library/LaunchAgents/com.apple.CallHistorySyncHelper.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.photoanalysisd.plist
sudo mv /System/Library/LaunchAgents/com.apple.photoanalysisd.plist /System/Library/LaunchAgents/com.apple.photoanalysisd.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.sharingd.plist
sudo mv /System/Library/LaunchAgents/com.apple.sharingd.plist /System/Library/LaunchAgents/com.apple.sharingd.plist.bak

# launchctl unload -w /System/Library/LaunchAgents/com.apple.parsecd.plist
# sudo mv /System/Library/LaunchAgents/com.apple.parsecd.plist /System/Library/LaunchAgents/com.apple.parsecd.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.SafariCloudHistoryPushAgent.plist
sudo mv /System/Library/LaunchAgents/com.apple.SafariCloudHistoryPushAgent.plist /System/Library/LaunchAgents/com.apple.SafariCloudHistoryPushAgent.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.safaridavclient.plist
sudo mv /System/Library/LaunchAgents/com.apple.safaridavclient.plist /System/Library/LaunchAgents/com.apple.safaridavclient.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.suggestd.plist
sudo mv /System/Library/LaunchAgents/com.apple.suggestd.plist /System/Library/LaunchAgents/com.apple.suggestd.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.photolibraryd.plist
sudo mv /System/Library/LaunchAgents/com.apple.photolibraryd.plist /System/Library/LaunchAgents/com.apple.photolibraryd.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.ContactsAgent.plist
sudo mv /System/Library/LaunchAgents/com.apple.ContactsAgent.plist /System/Library/LaunchAgents/com.apple.ContactsAgent.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.SocialPushAgent.plist
sudo mv /System/Library/LaunchAgents/com.apple.SocialPushAgent.plist /System/Library/LaunchAgents/com.apple.SocialPushAgent.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.CallHistoryPluginHelper.plist
sudo mv /System/Library/LaunchAgents/com.apple.CallHistoryPluginHelper.plist /System/Library/LaunchAgents/com.apple.CallHistoryPluginHelper.plist.bak

launchctl unload -w /System/Library/LaunchAgents/com.apple.softwareupdate_notify_agent.plist
sudo mv /System/Library/LaunchAgents/com.apple.softwareupdate_notify_agent.plist /System/Library/LaunchAgents/com.apple.softwareupdate_notify_agent.plist.bak

# launchctl unload -w /System/Library/LaunchAgents/com.apple.SafariBookmarksSyncAgent.plist
# sudo mv /System/Library/LaunchAgents/com.apple.SafariBookmarksSyncAgent.plist /System/Library/LaunchAgents/com.apple.SafariBookmarksSyncAgent.plist.bak

# launchctl unload -w /System/Library/LaunchAgents/com.apple.dock.extra.plist
# sudo mv /System/Library/LaunchAgents/com.apple.dock.extra.plist /System/Library/LaunchAgents/com.apple.dock.extra.plist.bak
