## users
| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| age_id             | integer | null: false |
| sex_id             | integer | null: false |
| level_id           | integer | null: false |
| history            | string  |             |
| profile            | text    |             |

### Association
- has_many :event_users
- has_many :events


## user_events
| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| event    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :event


## events
| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| title        | string     | null: false                    |
| day          | date       | null: false                    |
| start_time   | time       | null: false                    |
| end_time     | time       | null: false                    |
| place        | string     | null: false                    |
| place_url    | string     |                                |
| levelev_id   | integer    | null: false                    |
| limit        | string     |                                |
| number       | string     | null: false                    |
| cost         | string     | null: false                    |
| text         | text       | null: false                    |
| user         | references | null: false, foreign_key: true |

### Association
- has_many :event_users
- has_many :users