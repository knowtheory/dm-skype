# dm-skype

Skype 5 for macs (and i hear this is true for other OSes too) uses a sqlite database under the hood to store usage metadata, including chat and call history.  These are some DataMapper classes wrapping the database tables, allowing one to easily and quickly access usage information.

# HUGE CAVEAT THAT YOU MUST READ

UNDER NO CIRCUMSTANCES SHOULD YOU TRY TO COPY OR MOVE AN SQLITE DB WHILE IT IS BEING ACCESSED.  Please quit Skype make a copy of your database (on Macs it's in ~/Library/Application Support/Skype/[your skype username]/main.db ) to access.

