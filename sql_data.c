
#include "sql_data.h"
#include "sql_yacc.h"
#include <stdlib.h>


sql_parser_t ansiParser = {
    { 0, 0, 0 },
    { 1 }
};


int SQL_Statement_Like(const char* s1, int l1, const char* s2, int l2) {
    char c;
    while (l2) {
        --l2;
        switch (c = *s2++) {
	  case '\\':
	    /* Literal match with the following char */
	    if (!l2--  ||  !l1  ||  *s1++ != *s2++) {
	        return 0;
	    }
	    break;
	  case '_':
	    /* Match anything */
	    if (!l1--) {
	        return 0;
	    }
	    ++s1;
	    break;
	  case '%':
	    while (l2  &&  *s2 == '%') {
	        /* Multiple '%' are just like one */
	        ++s2;
		--l2;
	    }
	    if (!l2) {
	        /* Trailing '%' matches any string */
	        return 1;
	    }
	    while (l1) {
	        if (SQL_Statement_Like(s1, l1, s2, l2)) {
		    return 1;
		}
		++s1;
		--l1;
	    }
	    return 0;
	  default:
	    if (!l1  ||  *s1++ != c) {
	        return 0;
	    }
	    break;
	}
    }
    return l2 == 0;
}


void SQL_Statement_Dequote(char* ePtr, char* pPtr, int pLen) {
    char c;
    ++ePtr;
    while (pLen-- > 0) {
        if ((c = *ePtr++) == '\\') {
	    switch ((c = *ePtr++)) {
	      case '0':
		c = '\0';
		break;
	      case 'n':
		c = '\n';
		break;
	      case 'r':
		c = '\r';
		break;
	    }
	}
	*pPtr++ = c;
    }
    *pPtr ++ = '\0';
}

char* SQL_Statement_PPtr(sql_string_t* str) {
    if (!str->pPtr) {
        if ((str->pPtr = malloc(str->pLen+1))) {
	    SQL_Statement_Dequote(str->ePtr, str->pPtr, str->pLen);
	} else {
	    return NULL;
	}
    }
    return str->pPtr;
}

char* SQL_Statement_Error(int errCode) {
    char* result;

    switch (errCode) {
      case SQL_STATEMENT_ERROR_PARSE:
	  result = "Parse error";
	  break;
      case SQL_STATEMENT_ERROR_MEM:
	  result = "Out of memory";
	  break;
      case SQL_STATEMENT_ERROR_OUT_OF_BOUNDS:
	  result = "Query too complex";
	  break;
      case SQL_STATEMENT_ERROR_INTERNAL:
	  result = "Internal module error";
	  break;
      default:
	  result = NULL;
	  break;
    }
    return result;
}


char* SQL_Statement_Command(int command) {
    switch (command) {
      case SQL_STATEMENT_COMMAND_SELECT:
	return "SELECT";
      case SQL_STATEMENT_COMMAND_INSERT:
	return "INSERT";
      case SQL_STATEMENT_COMMAND_DELETE:
	return "DELETE";
      case SQL_STATEMENT_COMMAND_UPDATE:
        return "UPDATE";
      case SQL_STATEMENT_COMMAND_CREATE:
        return "CREATE";
      case SQL_STATEMENT_COMMAND_DROP:
        return "DROP";
      default:
	return NULL;
    }
}


char* SQL_Statement_Op(int op) {
    switch (op) {
      case SQL_STATEMENT_OPERATOR_EQ:
        return "=";
      case SQL_STATEMENT_OPERATOR_NE:
	return "<>";
      case SQL_STATEMENT_OPERATOR_GE:
	return ">=";
      case SQL_STATEMENT_OPERATOR_GT:
	return ">";
      case SQL_STATEMENT_OPERATOR_LE:
	return "<=";
      case SQL_STATEMENT_OPERATOR_LT:
	return "<";
      case SQL_STATEMENT_OPERATOR_LIKE:
	return "LIKE";
      case SQL_STATEMENT_OPERATOR_IS:
	return "IS";
      case SQL_STATEMENT_OPERATOR_AND:
	return "AND";
      case SQL_STATEMENT_OPERATOR_OR:
	return "OR";
      case NOT:
	return "NOT";
      default:
	return NULL;
    }
}
