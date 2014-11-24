#!/usr/bin/osascript

tell application "iTerm"
  activate

  set myterm  to (current terminal)

  tell myterm

    set cursession to current session
    set mysession to (launch session "Default")
    tell mysession

      exec command "/bin/sh"
      write text "nohup sh $HOME/.swank/start-swank.sh </dev/null &"
      write text "exit"
      write text "exit"


    end tell

    select cursession

  end tell

end tell
