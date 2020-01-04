#!/bin/bash

cat src/sqlparser/parser.yy					\
	src/sqlparser/sql_keyword.yy			\
	src/sqlparser/dynamodb_keyword.yy		\
	src/sqlparser/dynamodb_string.yy		\
	src/sqlparser/dynamodb_number.yy		\
	src/sqlparser/dynamodb_boolean.yy		\
	src/sqlparser/dynamodb_null.yy			\
	src/sqlparser/dynamodb_undefined.yy		\
	src/sqlparser/dynamodb_array.yy			\
	src/sqlparser/dynamodb_json.yy			\
	src/sqlparser/dynamodb_stringset.yy		\
	src/sqlparser/dynamodb_numberset.yy		\
	src/sqlparser/dynamodb_binaryset.yy		\
	\
	src/sqlparser/javascript_obj_date.yy	\
	src/sqlparser/javascript_obj_math.yy	\
	src/sqlparser/javascript_func_uuid.yy	\
	src/sqlparser/javascript_func_buffer.node.yy	\
	src/sqlparser/javascript_expr.node.yy		\
	\
	src/sqlparser/keyword.yy				\
	\
	src/sqlparser/insert.yy					\
	src/sqlparser/update.yy					\
	src/sqlparser/replace.yy				\
	src/sqlparser/delete.yy					\
	src/sqlparser/select.yy					\
	src/sqlparser/create_table.yy			\
	src/sqlparser/show_tables.yy			\
	src/sqlparser/drop_table.yy				\
	src/sqlparser/describe_table.yy			\
	src/sqlparser/drop_index.yy				\
	src/sqlparser/scan.yy					\
	\
	> src/sqlparser.node.jison

cat src/sqlparser/parser.yy					\
	src/sqlparser/sql_keyword.yy			\
	src/sqlparser/dynamodb_keyword.yy		\
	src/sqlparser/dynamodb_string.yy		\
	src/sqlparser/dynamodb_number.yy		\
	src/sqlparser/dynamodb_boolean.yy		\
	src/sqlparser/dynamodb_null.yy			\
	src/sqlparser/dynamodb_undefined.yy		\
	src/sqlparser/dynamodb_array.yy			\
	src/sqlparser/dynamodb_json.yy			\
	src/sqlparser/dynamodb_stringset.yy		\
	src/sqlparser/dynamodb_numberset.yy		\
	src/sqlparser/dynamodb_binaryset.yy		\
	\
	src/sqlparser/javascript_obj_date.yy	\
	src/sqlparser/javascript_obj_math.yy	\
	src/sqlparser/javascript_func_uuid.yy	\
	src/sqlparser/javascript_func_buffer.browser.yy	\
	src/sqlparser/javascript_expr.browser.yy		\
	\
	src/sqlparser/keyword.yy				\
	\
	src/sqlparser/insert.yy					\
	src/sqlparser/update.yy					\
	src/sqlparser/replace.yy				\
	src/sqlparser/delete.yy					\
	src/sqlparser/select.yy					\
	src/sqlparser/create_table.yy			\
	src/sqlparser/show_tables.yy			\
	src/sqlparser/drop_table.yy				\
	src/sqlparser/describe_table.yy			\
	src/sqlparser/drop_index.yy				\
	src/sqlparser/scan.yy					\
	\
	> src/sqlparser.browser.jison

npm run buildnodeparser
npm run buildbrowserparser

#npm run build:browser
#npm run build:node
