# Bank tech test

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see  

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

### User Stories

```  
As a client  
So that I can manage my money    
I want to be able to open a new bank account  

As a client  
So that I do not need to keep cash  
I want to be able to deposit money onto my bank account  

As a client  
So that I can pay things by cash  
I want to be able to withdraw money from my bank account  

As a client  
So that I can keep track of my incoming and outgoing cash flows  
I want to be able to print bank statements with my transactions stating the date, credit, debit, updated balance    
```  
