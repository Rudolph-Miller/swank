#!/usr/bin/osascript

tell application "iTerm"
  activate

  set myterm  to (current terminal)

  tell myterm

    set cursession to current session
    set mysession to (launch session "Default")
    tell mysession

      exec command "/bin/sh"
      write text "sh $HOME/.swank/stop-swank.sh &"
      write text "exit"


    end tell

    select cursession

  end tell

end tell
