# Purpose

This small project shows how to run unit tests on
[Kaya](http://www.paolocapriotti.com/kaya/) without running into dependency
hell on your local host.

# Requirements

* [Git](http://git-scm.com/)
* [Vagrant](https://www.vagrantup.com/)

# Walkthrough

    $ cd ~/src/git  # or wherever you put your cloned github repos
      git clone https://github.com/pcapriotti/kaya
      git clone https://github.com/agt-the-walker/kaya-vagrant
      cd kaya-vagrant/

    $ vagrant up
      ./test.sh
    v0.3-77-gaa6cacf
    Started
    .......
    Finished in 0.001719 seconds.
    
    7 tests, 7 assertions, 0 failures, 0 errors
    /usr/bin/ruby1.8 -I"lib" -I"/usr/lib/ruby/vendor_ruby" "/usr/lib/ruby/vendor_ruby/rake/rake_test_loader.rb" "test/plugins/test_loadable.rb" "test/plugins/ics/test_icsapi.rb" "test/plugins/ics/test_style12.rb" "test/plugins/ics/test_protocol.rb" "test/plugins/ics/test_match_helper.rb" "test/plugins/ics/test_match_handler.rb" "test/plugins/engines/test_engine_loader.rb" "test/plugins/chess/test_chess_move.rb" "test/plugins/chess/test_pgn.rb" "test/plugins/chess/test_chess_perform_moves.rb" "test/plugins/chess/test_chess_validation.rb" "test/plugins/chess/test_chess_serializer.rb" "test/plugins/chess/test_chess_policy.rb" "test/plugins/chess/test_chess_state.rb" "test/plugins/chess/test_chess_animator.rb" "test/plugins/chess/test_chess_attack.rb" "test/plugins/chess/test_chess_piece.rb" "test/plugins/chess/test_chess_board.rb" "test/plugins/clock/test_clock_display.rb" "test/plugins/shogi/test_shogi_serializer.rb" "test/plugins/shogi/test_shogi_validation.rb" "test/plugins/shogi/test_shogi_state.rb" "test/plugins/shogi/test_shogi_perform_moves.rb" "test/plugins/shogi/test_shogi_piece.rb" "test/plugins/shogi/test_shogi_notation.rb" "test/board/test_square_tag.rb" "test/board/test_board.rb" "test/board/test_point_converter.rb" "test/test_animations.rb" "test/test_controller.rb" "test/test_utils.rb" "test/test_point.rb" "test/test_clock.rb" "test/test_simple_animation.rb" "test/test_point_range.rb" "test/test_gui_builder.rb" "test/interaction/test_history.rb" "test/interaction/test_undo_manager.rb" "test/interaction/test_operation_history.rb" "test/interaction/test_match.rb" "test/test_animation_field.rb" "test/test_observer_utils.rb" "test/test_animator_helper.rb" 
    Loaded suite /usr/lib/ruby/vendor_ruby/rake/rake_test_loader
    Started
    ................EEE..................................................................................................F...................................................................................................................................................
    Finished in 2.60499 seconds.
    
      1) Error:
    test_reset_initial_state(TestBoard):
    NoMethodError: undefined method `fill' for #<Qt::Image:0xb1eb1b88>
        ./lib/toolkits/qt.rb:73:in `method_missing'
        ./lib/toolkits/qt.rb:73:in `painted'
        ./lib/utils.rb:10:in `tap'
        ./lib/toolkits/qt.rb:72:in `painted'
        ./lib/helpers/theme_stubs.rb:10:in `method_missing'
        ./lib/board/redrawable.rb:11:in `piece_reloader'
        ./lib/item.rb:58:in `[]'
        ./lib/item.rb:58:in `reload'
        ./lib/board/board.rb:55:in `redraw'
        ./lib/board/board.rb:54:in `each'
        ./lib/board/board.rb:54:in `redraw'
        ./lib/board/board.rb:80:in `set_geometry'
        /mnt/git/kaya/test/board/test_board.rb:41:in `test_reset_initial_state'
        /usr/lib/ruby/vendor_ruby/mocha/integration/test_unit/ruby_version_186_and_above.rb:22:in `__send__'
        /usr/lib/ruby/vendor_ruby/mocha/integration/test_unit/ruby_version_186_and_above.rb:22:in `run'
    
      2) Error:
    test_square_tag(TestBoard):
    NoMethodError: undefined method `fill' for #<Qt::Image:0xb1eafba8>
        ./lib/toolkits/qt.rb:73:in `method_missing'
        ./lib/toolkits/qt.rb:73:in `painted'
        ./lib/utils.rb:10:in `tap'
        ./lib/toolkits/qt.rb:72:in `painted'
        ./lib/helpers/theme_stubs.rb:10:in `method_missing'
        ./lib/board/redrawable.rb:18:in `background_reloader'
        ./lib/item.rb:58:in `[]'
        ./lib/item.rb:58:in `reload'
        ./lib/board/board.rb:55:in `redraw'
        ./lib/board/board.rb:54:in `each'
        ./lib/board/board.rb:54:in `redraw'
        ./lib/board/board.rb:80:in `set_geometry'
        /mnt/git/kaya/test/board/test_board.rb:53:in `test_square_tag'
        /usr/lib/ruby/vendor_ruby/mocha/integration/test_unit/ruby_version_186_and_above.rb:22:in `__send__'
        /usr/lib/ruby/vendor_ruby/mocha/integration/test_unit/ruby_version_186_and_above.rb:22:in `run'
    
      3) Error:
    test_square_tag2(TestBoard):
    NoMethodError: undefined method `fill' for #<Qt::Image:0xb1eadd94>
        ./lib/toolkits/qt.rb:73:in `method_missing'
        ./lib/toolkits/qt.rb:73:in `painted'
        ./lib/utils.rb:10:in `tap'
        ./lib/toolkits/qt.rb:72:in `painted'
        ./lib/helpers/theme_stubs.rb:10:in `method_missing'
        ./lib/board/redrawable.rb:18:in `background_reloader'
        ./lib/item.rb:58:in `[]'
        ./lib/item.rb:58:in `reload'
        ./lib/board/board.rb:55:in `redraw'
        ./lib/board/board.rb:54:in `each'
        ./lib/board/board.rb:54:in `redraw'
        ./lib/board/board.rb:80:in `set_geometry'
        /mnt/git/kaya/test/board/test_board.rb:68:in `test_square_tag2'
        /usr/lib/ruby/vendor_ruby/mocha/integration/test_unit/ruby_version_186_and_above.rb:22:in `__send__'
        /usr/lib/ruby/vendor_ruby/mocha/integration/test_unit/ruby_version_186_and_above.rb:22:in `run'
    
      4) Failure:
    test_protocol_list(TestEngineLoader)
        [/mnt/git/kaya/test/plugins/engines/test_engine_loader.rb:18:in `test_protocol_list'
         /usr/lib/ruby/vendor_ruby/mocha/integration/test_unit/ruby_version_186_and_above.rb:22:in `__send__'
         /usr/lib/ruby/vendor_ruby/mocha/integration/test_unit/ruby_version_186_and_above.rb:22:in `run']:
    <["GNUShogi", "XBoard"]> expected but was
    <["GNUShogi", "GPSShogi", "XBoard"]>.
    
    265 tests, 1675 assertions, 1 failures, 3 errors
    rake aborted!
    Command failed with status (1): [/usr/bin/ruby1.8 -I"lib" -I"/usr/lib/ruby/...]
    
    Tasks: TOP => test
    (See full trace by running task with --trace)

Let's check the latest official release instead:

    $ (cd ../kaya; git checkout v0.4)
      ./test.sh
    v0.3-67-g889977c
    [...]
    Loaded suite /usr/lib/ruby/vendor_ruby/rake/rake_test_loader
    Started
    ................EEE......................................................................................................................................................................................................................................................
    [...]
    265 tests, 1674 assertions, 0 failures, 3 errors

Here we don't have the "test\_protocol\_list" failure. Let's check the most
recent forks of [Kaya](http://www.paolocapriotti.com/kaya/), in case the errors
above have been fixed:

    $ (cd ../kaya;
       for user in tomodo Pikrass; do
           git remote add $user https://github.com/$user/kaya.git
           git fetch $user
       done)

    $ (cd ../kaya; git checkout tomodo/master)
      ./test.sh
    v0.3-82-g0a200d1
    [...]
    Loaded suite /usr/lib/ruby/vendor_ruby/rake/rake_test_loader
    Started
    ................EEE..................................................................................................F...................................................................................................................................................
    265 tests, 1675 assertions, 1 failures, 3 errors

    $ (cd ../kaya; git checkout Pikrass/master)
      ./test.sh
    v0.3-80-g73c0d90
    [...]
    Loaded suite /usr/lib/ruby/vendor_ruby/rake/rake_test_loader
    .....................................................................................................................F...............................................................................E.......FEFFEEEF....................................................
    [...]
    265 tests, 1660 assertions, 5 failures, 5 errors

The [Pikrass](https://github.com/Pikrass) fork is interesting since it appears
to have fixed the three errors above. Let's merge the relevant commit into v0.4:

    $ (cd ../kaya;
       git checkout v0.4
       git cherry-pick 1371f1aa52f5604a2b9d0319c0b6d9b8ed8a6768)
    [detached HEAD 0b10b20] Fix for new versions of Ruby and Ruby-Qt
     Author: Bastien Scher <bastien0705@gmail.com>
     Date: Tue Feb 26 20:16:42 2013 +0100
     2 files changed, 2 insertions(+), 2 deletions(-)

    $ ./test.sh
    v0.3-68-g0b10b20
    [...]
    Loaded suite /usr/lib/ruby/vendor_ruby/rake/rake_test_loader
    [...]
    265 tests, 1687 assertions, 0 failures, 0 errors

That's all folks!
