# Planning Notes

## Data Model

Models:
- Users
- Posts
- Comments

### Users

```
username:string [unique, 4-12 chars, present]
password:string [6-16 chars, present]
id:integer
created_at:datetime
updated_at:datetime

has_many posts
has_many comments
```

### Posts

```
url:string [present]
user_id:integer [present]
id:integer
created_at:datetime
updated_at:datetime

belongs_to user
has_many comments
```

### Comments

```
body:text [present]
user_id:integer [present]
post_id:integer [present]
id:integer
created_at:datetime
updated_at:datetime

belongs_to user
belongs_to post
```
