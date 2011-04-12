# dm-skype

Skype 5 for macs (and i hear this is true for other OSes too) uses a sqlite database under the hood to store usage metadata, including chat and call history.  These are some DataMapper classes wrapping the database tables, allowing one to easily and quickly access usage information.

# HUGE CAVEAT THAT YOU MUST READ

UNDER NO CIRCUMSTANCES SHOULD YOU TRY TO COPY OR MOVE AN SQLITE DB WHILE IT IS BEING ACCESSED.  Please quit Skype make a copy of your database (on Macs it's in ~/Library/Application Support/Skype/[your skype username]/main.db ) to access.

## Usage

If this gets gemified this'll be even easier, but for now:

	$:.unshift(File.join(path_to_this_repo, 'lib'))
	require 'dm-skype'
	repo_key = :default
	db_uri = 'sqlite:///Users/knowtheory/data/chat/skype_main.db'
	Skype.setup(repo_key, db_uri)
	DataMapper.finalize

If you wish to do custom DataMapper thingies you can also require just the models themselves (please note that you will need to set the naming convention on the repository):

	$:.unshift(File.join(path_to_this_repo, 'lib'))
	require 'dm-core'

	# custom stuff
	db_uri = 'sqlite:///Users/knowtheory/data/chat/skype_main.db'
	DataMapper.setup(:skype, db_uri) # use a separate :skype repository
	DataMapper.repository(:skype).adapter.resource_naming_convention = DataMapper::NamingConventions::Resource::UnderscoredAndPluralizedWithoutModule

	require 'dm-skype/models'
	DataMapper.finalize
