# bundler-dep-leak

This collection of gems under a common Gemfile demonstrates a
dependency leakage issue with Bundler whereby gems are available at
test time of sub_b that are not directly or even indirectly declared
via the sub_b/sub_b.gemspec.
