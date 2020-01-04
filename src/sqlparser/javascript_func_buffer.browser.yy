


javascript_data_func_buffer
	: BUFFER DOT FROM LPAR dynamodb_data_string COMMA dynamodb_data_string RPAR
		{
			if ( $1 !== 'Buffer')
				throw ('ReferenceError: ' + $1 + ' is not defined')

			if ( $3 !== 'from')
				throw ('TypeError: Buffer.' + $3 + ' is not a function')

			if ( $7 !== 'base64')
				throw ('TypeError: Buffer.from - only base64 supported')

			var buf;

			if (!$7)
				buf = Uint8Array.from( $5 , function (c) { return c.charCodeAt(0) } )

			if ($7 === 'base64')
				buf = Uint8Array.from( btoa($5) , function (c) { return c.charCodeAt(0) } )

			$$ = buf;
		}
	;
