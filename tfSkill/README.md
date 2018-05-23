# tensorflow skills

## timeline for analyzing data flow



## `tf.name_scope() vs tf.variable_scope()`
* Both scopes have the same effect on all operations as well as variables created using `tf.Variable`.
* The only way to place a variable accessed using `tf.get_variable` in a scope is to use a variable scope, as in the following example:

