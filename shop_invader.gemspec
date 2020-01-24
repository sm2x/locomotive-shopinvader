# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shop_invader/version'

Gem::Specification.new do |spec|
  spec.name          = "shop_invader"
  spec.version       = ShopInvader::VERSION
  spec.authors       = ["did"]
  spec.email         = ["didier.lafforgue@gmail.com"]

  spec.summary       = %q{Power a Locomotive site with ShopInvader (Odoo e-commerce platform)}
  spec.homepage      = "https://www.locomotivecms.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'algoliasearch', '~> 1.13.0'
  spec.add_dependency 'jwt', '~> 2.2.1'
  spec.add_dependency 'faraday', '~> 0.15.2'
  spec.add_dependency 'elasticsearch', '~> 6.2.0'

end
