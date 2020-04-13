other
baseline: spec
  <baseline>
   spec
     for: #'common'
     do: [

		spec baseline: 'AbstractApplicationObjects' with: [
			spec repository: 'github://brunobuzzi/AbstractApplicationObjects:master/repository' ].

		spec package: 'AbstractBIObjects' with: [spec requires: #('AbstractApplicationObjects')].
		spec
			group: 'core' with: #('AbstractBIObjects'); 
			group: 'default' with: #('AbstractBIObjects').
		]