EMAIL_VERACITY_GEMSPEC = Gem::Specification.new do |s|
  s.name = 'email-veracity'
  s.version = File.read('VERSION').strip
  s.authors = ['Carsten Nielsen']
  s.email = 'heycarsten@gmail.com'
  s.summary = 'A straight-forward Ruby library for checking the real-world validity of email addresses.'
  s.description = %|
    Email Veracity abstracts an email address into a series of objects which makes
    it easy to see if an address is invalid, and if so, why.|
  # We need the revision file to exist,
  # so we just create it if it doesn't.
  # It'll usually just get overwritten, though.
  File.open('REVISION', 'w') { |f| f.puts '(unknown)' } unless File.exist?('REVISION')
  s.files = [
    'lib/email_veracity/address.rb',
    'lib/email_veracity/config.rb',
    'lib/email_veracity/core_extensions.rb',
    'lib/email_veracity/domain.rb',
    'lib/email_veracity/errors.rb',
    'lib/email_veracity/resolver.rb',
    'lib/email_veracity/server.rb',
    'lib/email_veracity/validatability.rb',
    'lib/email_veracity.rb',
    'README.rdoc',
    'VERSION',
    'Rakefile',
    'init.rb']
  s.homepage = 'http://github.com/heycarsten/email-veracity'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc']
  s.rdoc_options += [
    '--title', 'Email Veracity',
    '--main', 'README.rdoc',
    '--line-numbers',
    '--inline-source']
  s.test_files = [
    'test/mocks/class_with_validation_mock.rb',
    'test/test_helper.rb',
    'test/unit/address_test.rb',
    'test/unit/config_test.rb',
    'test/unit/core_extensions_test.rb',
    'test/unit/domain_test.rb',
    'test/unit/resolver_test.rb',
    'test/unit/server_test.rb',
    'test/unit/validatability_test.rb' ]
end