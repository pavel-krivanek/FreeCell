initialization
initialize

	CHSegmentOrigins := {0.2@0.1. 0.2@0.45. 0.2@0.8}.
	CVSegmentOrigins := {0.1@0.2. 0.1@0.55. 0.8@0.2. 0.8@0.55}.
	TSegments := { 0.25@0.25. 0.45@0.25. 0.55@0.25. 0.75@0.25. 0.25@0.6. 0.45@0.6. 0.55@0.6. 0.75@0.6. }.
	BSegments := { 0.45@0.4. 0.25@0.4. 0.75@0.4. 0.55@0.4. 0.45@0.76. 0.25@0.76. 0.75@0.76. 0.55@0.76. }.

	DSegments  := {
	{false. false. false. false. false. false. false. false. }."0"
	{false. false. false. false. false. false. false. false. }."1"
	{false. false. false. false. false. false. false. false. }."2"
	{false. false. false. false. false. false. false. false. }."3"
	{false. false. false. false. false. false. false. false. }."4"
	{false. false. false. false. false. false. false. false. }."5"
	{false. false. false. false. false. false. false. false. }."6"
	{false. false. false. false. false. false. false. false. }."7"
	{false. false. false. false. false. false. false. false. }."8"
	{false. false. false. false. false. false. false. false. }."9"
	{false. false. false. false. false. false. false. false. }."A"
	{false. false. false. false. false. false. false. false. }."B"
	{false. false. false. false. false. false. false. false. }."C"
	{false. false. false. false. false. false. false. false. }."D"
	{false. false. false. false. false. false. false. false. }."E"
	{false. false. false. false. false. false. false. false. }."F"
	{false. false. false. false. false. false. false. false. }."G"
	{false. false. false. false. false. false. false. false. }."H"
	{false. false. false. false. false. false. false. false. }."I"
	{false. false. false. false. false. false. false. false. }."J"
	{false. false. false. true. false. false. false. false. }."K"
	{false. false. false. false. false. false. false. false. }."L"
	{true. false. false. true. false. false. false. false. }."M"
	{true. false. false. false. false. false. true. false. }."N"
	{false. true. true. false. true. false. false. true.  }."O"
	{false. false. false. false. false. false. false. false. }."P"
	{false. false. false. false. false. false. true. false. }."Q"
	{false. false. false. false. false. false. true. false. }."R"
	{false. false. false. false. false. false. false. false. }."S"
	{false. false. false. false. false. false. false. false. }."T"
	{false. false. false. false. false. false. false. false. }."U"
	{false. false. false. false. true. false. false. true. }."V"
	{false. false. false. false. false. true. true. false. }."W"
	{true. false. false. true. false. true. true. false. }."X"
	{false. false. false. false. false. false. false. false. }."Y"
	{false. false. false. true. false. true. false. false. }."Z"
	{false. false. false. false. false. false. false. false. }}."SPACE"

	CHSegments := {
		{true. false. true}."0"
		{false. false. false}."1"
		{true. true. true}."2"
		{true. true. true}."3"
		{false. true. false}."4"
		{true. true. true}."5"
		{true. true. true}."6"
		{true. false. false}."7"
		{true. true. true}."8"
		{true. true. true}."9"
		{true. true. false}."A"
		{true. true. true}."B"
		{true. false. true}."C"
		{true. false. true}."D"
		{true. true. true}."E"
		{true. true. false}."F"
		{true. true. true}."G"
		{false. true. false}."H"
		{false. false. false}."I"
		{false. false. true}."J"
		{false. true. false}."K"
		{false. false. true}."L"
		{false. false. false}."M"
		{false. false. false}."N"
		{false. false. false}."O"
		{true. true. false}."P"
		{true. false. true}."Q"
		{true. true. false}."R"
		{true. true. true}."S"
		{false. true. true}."t"
		{false. false. true}."U"
		{false. false. false}."V"
		{false. false. false}."W"
		{false. false. false}."X"
		{false. true. true}."Y"
		{true. false. true}."Z"
		{false. false. false.}}."SPACE"
	CVSegments := {
		{true. true.  true. true}."0"
		{false. false. true. true}."1"
		{false. true. true. false}."2"
		{false. false. true. true}."3"
		{true. false. true. true}."4"
		{true. false. false. true}."5"
		{true. true. false. true}."6"
		{false. false. true. true}."7"
		{true. true. true. true}."8"
		{true. false. true. true}."9"
		{true. true. true. true}."A"
		{true. true. true. true}."B"
		{true. true. false. false}."C"
		{true. true. true. true}."D"
		{true. true. false. false}."E"
		{true. true. false. false}."F"
		{true. true. false. true}."G"
		{true. true. true. true}."H"
		{true. true. false. false}."I"
		{false. true. true. true}."J"
		{true. true. false. true}."K"
		{true. true. false. false}."L"
		{true. true.  true. true}."N"
		{true. true. true. true}."N"
		{false. false. false. false}."O"
		{true. true. true. false}."P"
		{true. true.  true. true}."q"
		{true. true. true. false}."R"
		{true. false. false. true}."S"
		{true. true. false. false}."t"
		{true. true. true. true}."U"
		{true. false. true. false}."V"
		{true. true.  true. true}."w"
		{false. false. false. false}."x"
		{true. false. true. true}."y"
		{false. false. false. false}."z"
		{false. false. false. false}}."SPACE"