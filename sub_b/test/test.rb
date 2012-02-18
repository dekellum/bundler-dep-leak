#!/usr/bin/env jruby

$LOAD_PATH.unshift( File.join( File.dirname( __FILE__ ), '..', 'lib' ) )

require 'rubygems'
require 'bundler/setup'

require 'test/unit'

class TestLeaks < Test::Unit::TestCase

  def test_dev_dep_leak
    assert_raises( LoadError,
      "minitest development dependency leaked from sub_a" +
      ", which is a regular (non development) dependency of this sub_b" ) do
      require 'minitest/unit'
    end
  end

  def test_non_dev_dep_leak
    assert_raises( LoadError,
      "hashie dependency leaked out of sub_c" +
      ", which is not itself a dependency of this sub_b" ) do
      require 'hashie'
    end
  end

end
