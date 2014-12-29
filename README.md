Swank setting of Apple Script for Slimev
===

1. start-swank.scpt
  * creates new session in iTerm.
  * run `nohup sh .swank/start-swank.sh` in this session.
  * close this session.
2. start-swank.sh
  * run `ros swank.lisp`
3. swank.lisp
  * `(loads ".vim/neobundle/slimv/slime/start-swank.lisp")`
  * `(defun main ())` for ros.
  * `(loop (sleep 1000))` for nohup.
    * without sleep-loop sbcl returns the error like `can not find STANDARD-INPUT`.
4. stop-swnak.scpt
  * creates new session in iTerm.
  * run `nohup sh .swank/stop-swank.sh` in this session.
  * close this session.
5. stop-swank.sh
  * `kill swank.lisp`
