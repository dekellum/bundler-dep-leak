#!/usr/bin/env jruby

$LOAD_PATH.unshift( File.join( File.dirname( __FILE__ ), '..', 'lib' ) )

require 'rubygems'
require 'bundler/setup'

require 'minitest/unit'
require 'minitest/autorun'

class TestMiniTest < MiniTest::Unit::TestCase

  def test_minitest
    pass #Minitest load works
  end

end
