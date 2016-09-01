all:
	make deps; make build; make tests
deps:
	nuget install
build:
	msbuild
tests:
	mono packages/nspec.1.0.7/tools/NSpecRunner.exe bin/Debug/csharp_interview_prep.dll
