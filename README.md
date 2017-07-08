# rails-module-one2one
> Rails module one to one model.


## step to step:
+ conditions:
1. A has B
2. B belongs to A
3. A是主表，B是从表。
4. A中id的主键值，在B中作为关联用的外键值。
5. 一般来说需要在A、B类中定义对方的引用，以便能够通过一方找到另一方。

+ models(ClassRoom/Teacher) :
```conf
ClassRoom has one Teacher
Teacher belongs to ClassRoom.

A: ClassRoom
B: Teacher 

Templates:
rails g model A name:string
rails g B a_id:integer name:string
```

+ create model:
```bash
rails g model Teacher class_room_id:integer name:string  
rails g model ClassRoom name:string
rake db:migrate
```

## seed code:
```rb
class_room = ClassRoom.create(:name=>'101')  
teacher = Teacher.create(:name=>'xiaoming');

teacher.class_room = class_room;

puts teacher.class_room_id;
```


## resources: 
+ http://blog.csdn.net/abbuggy/article/details/8271963