WEB2MT lab stuff
================

Just my lab code for HPIT4009. Nothing fancy.

---

lab4 — a weather page

Opens the HKO weather API, dumps a 9-day forecast into some Bootstrap cards.
Open `index.html` and it just works, no server needed.

lab5 — first backend

Express app that reads and writes a `users.json` file. Has the usual CRUD routes —
get all, get one, add, update, delete. Runs on port 3000.

```
cd hpit4009-lab5-12345678
npm install
npm start
```

lab6 — adding a database

Same idea as lab5 but backed by MySQL instead of a JSON file. Two versions here:
`-start` has the skeleton and the SQL file, `-completed` has everything wired up
with `mysql2`. Needs a local MySQL server running, and you'll want to run `data.sql`
first to set up the table.

```
cd hpit4009-lab6-12345678-completed
npm install
npm start
```

midterm — photo blog

Express + Handlebars app that shows a list of photos and individual post pages.
Data lives in `posts.json`. Two routes, a few views, some static images.

```
cd hpit4009-midterm-12345678
npm install
npm start
```

midtermtest

A slightly different take on the midterm. Extra routes, different layout.
Same stack: Express + Handlebars.

week7-demo-2

More practice with routes and Handlebars views. Has `/users` and `/details` on
top of the usual index page.

```
cd week7-demo-2
npm install
npm start
```

mid-term-resources

Just images and a `posts.json` file shared across a couple of the projects above.

---

quick setup

All the Node projects need `npm install` before they'll run. `node_modules` isn't
committed so you have to do that yourself after cloning.

For lab6, make sure MySQL is running and the credentials in `app.js` match your
local setup. Run `data.sql` first or the queries won't have anywhere to go.

---

Slides and PDFs aren't in here, just the code. Keeps the repo from being enormous.
