typedef union {
    int scalar_val;
    int bool_val;
    int int_val;
    double real_val;
    sql_string_t string_val;
    sql_ident_t ident_val;
    sql_param_t param;
    int column;
    int val;
    int operator;
    int null_val;
} YYSTYPE;
#define	INTEGERVAL	257
#define	STRING	258
#define	REALVAL	259
#define	IDENT	260
#define	NULLVAL	261
#define	PARAM	262
#define	OPERATOR	263
#define	IS	264
#define	AND	265
#define	OR	266
#define	ERROR	267
#define	INSERT	268
#define	UPDATE	269
#define	SELECT	270
#define	DELETE	271
#define	DROP	272
#define	CREATE	273
#define	ALL	274
#define	DISTINCT	275
#define	WHERE	276
#define	ORDER	277
#define	ASC	278
#define	DESC	279
#define	FROM	280
#define	INTO	281
#define	BY	282
#define	VALUES	283
#define	SET	284
#define	NOT	285
#define	TABLE	286
#define	CHAR	287
#define	VARCHAR	288
#define	REAL	289
#define	INTEGER	290
#define	PRIMARY	291
#define	KEY	292
#define	BLOB	293
#define	TEXT	294

