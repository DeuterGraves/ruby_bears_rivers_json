base_dir = File.expand_path(File.join(File.dirname(__FILE__), ".."))
models_dir  = File.join(base_dir, "models")
spec_dir = File.join(base_dir, "spec")

$LOAD_PATH.unshift(models_dir)

require 'test/unit'

exit Test::Unit::AutoRunner.run(true, spec_dir)
