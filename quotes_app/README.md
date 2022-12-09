# quotes_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Flutter task-

Description:
You have to make a "Quote mobile app" in Flutter considering the following points:

1. Use any State Management tool(Provider, Bloc, or Getx).
2. Must have a nice and clean UI.
3. Upload the source code to GitHub and make the repo public.
4. Maintain MVC architecture(not mandatory).

Functionality includes:

(All apis you will get)

When app open, two option should be there. 1) Author Quote 2) Search any Quote 3) Favourite Quote

When open "Author Quote"- 1) Here user can search quote of an author by searching his name.(Only one quote of an author at a time) 2) User can store his favourite quote in local storage.

When Open "Search any Quote"- 1) Here user can search any quote by any topics. 2) By default topic related quotes will show of limit 10. 3) User can change limit of quotes to min 1 and max 100. 4) User can store his favourite quote in local storage.
Caching should happen overall the app.(Example: suppose user open any section mentioned above and search anything and close that section. When he/she reopen that section, last shown quotes should be there.)

When Open "Favourite Quote"- 1) All Favourite Quotes that stored in local storage should show here by default. 2) User can delete any quote. 3) User can update any quote. 4) User can search any quote(not depend on tags or author. In this section, search will be done based on quote characters or quotes words) 5) One option should be there, where user can delete all his/her favourite quotes.

Keep in mind:

1. All of the mentioned functionality should do with any state management tool(Provider, Bloc or Getx etc).
2. After completion, upload the code in github and make the repo public.
3. Share apk and source code link(via github) with us.
4. You will be hired based on your code quality, app design and obviously with the efficiency of proper state management.

Submit it within 1 day.

Best of luck.

APIs that will use in this app.

1. Search Quotes with some queries:
   https://api.quotable.io/search/quotes?query=life%20happiness

2. For a particular limit with a particular query:
   https://api.quotable.io/search/quotes?query=love&limit=10

3. Get a quote for an author:
   https://api.quotable.io/search/authors?query=Einstein
