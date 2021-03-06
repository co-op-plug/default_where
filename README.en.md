## DefaultWhere

This Library set default params process for where query in ActiveRecord

It's a wise decision to use `default_where` with [default_form](https://github.com/qinmingyuan/default_form) to replace `ransack`

## Features and Usage

### Normal equal params

* Params:
```ruby
# rails 4 and later, default_where does nothing
params = { role_id: 1, age: 20 }
User.default_where(params)
```

### Equal params with association

* params
```ruby
User.belongs_to :role
params = { name: 'dhh', 'role.id': 2 }

# you can use any table name or reference name
params = { name: 'dhh', 'roles.id': 2 }
```
* Before use `default_where`
```ruby
User.includes(:student).where(name: params[:name], role: {id: params[:'role.id']})
```
* After Use `default_where`
```ruby
User.default_where(params)
```

### Range params
* params
```ruby
params = { 'role_id-lte': 2 }
```
* Before use `default_where`
```ruby
User.where('role_id >= ?', params[:'role_id-lte'])
```
* After use `default_where`
```ruby
User.default_where(params)
```

### Auto remove blank params by default, no need write query with `if else`
* params
```ruby
params = { age: '', role_id: 1 }
```
* Before use `default_where`
```ruby
users = User.where(role_id: params[:role_id])
users = users.where(age: params[:age]) if params[:age]
```
* After use `default_where`
```ruby
User.default_where(params)

# also can control which blank value can use
User.default_where(params, { allow: [nil] })
```

### OR
```ruby
params = {
  'users.email-not-or-name': 'dhh'
}

```

### Auto call strip for string 
* params
```ruby
params= { name: ' dhh ' }
```
* Before use `default_where`
```ruby
User.where(name: params[:name].strip)
```
* After use `default_where`
```ruby
User.default_where(params)

# also can control whether use strip
User.default_where(params, { strip: false })
```

### Order params
* Params
```ruby
params = { 'age-asc': '1', 'last_login_at-asc': '2' }
```
* Before use `default_where`
```ruby
User.order(age: :asc, last_login_at: :asc)
```
* After use `default_where`
```ruby
User.default_where(params)
```

## A sample with all params above
* Params
```ruby
{ name: 'dhh', 'role.id': 2, 'age-lte': 2, 'age-asc': '1', 'last_login_at-asc': '2' }
```
* Before use `default_where`
```ruby
User.includes(:role).where(name: params[:name], 'roles.id': params[:'role.id']).order(age: :asc, last_login_at: :asc)
```
* After use `default_where`
```ruby
User.default_where(params)
```