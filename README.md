# Management System
A system manager to control orders, based on their control number or their status.


## Installation

After clone the Repo, use bundler install to intall all the dependencies in the Gemfile

```bash
bundler install
```

if you didn't have yarn installed, use the package manager [npm](https://docs.npmjs.com/cli/v7/commands/npm-install) to install yarn.

```bash
npm install --global yarn
```

then install

```bash
rails webpacker:install
```

and run

```bash
rake db:migrate
```

this system use **``ruby 3.0.2``** and **``rails 6.1.4``**

## Usage

Use this cli to run the server(default **`localhost:3000`)**

```bash
"rails s" or "rails server"
```

## end-points

**GET**   **`/`** -> `return all orders sorted by id`
 
**GET**   **`/orders/:id`** -> `return an order by id`

**POST**   **`/orders/:id/edit`** -> `change order state`

**GET**   **`/order/orders/filter/number/:id`** -> `return orders by control number`

**GET**   **`/orders/filter/state/:state`** -> `return orders by state`

**PUT**   **`/orders/:id`** -> `change order attributes`

**DELETE**   **`/orders/:id`** -> `delete an order`

try it on [Postman](https://www.postman.com/)
