To run the features run:
features\2travel.feature


Run a feature file without report dialog
==================================
features\2travel.feature --publish-quiet

Run a feature file and export results to HTML format
====================================================
features\2travel.feature -f html -o helloworld.html

Run an specific scenario in a feature file
==========================================
features\2travel.feature  -t @onlyThis
features\2travel.feature -t @onlyThis -f html -o reports\onlythis.html

Run all features
================
...\capybara-calidad>cucumber features



