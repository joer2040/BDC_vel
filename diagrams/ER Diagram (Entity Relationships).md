┌─────────────────────────────────┐         ┌─────────────────────────────────────┐
│  raw_journalentry               │         │  raw_operationalacctgdocitem        │
│  (journalentryheader)           │         │  (journalentry)                     │
│─────────────────────────────────│         │─────────────────────────────────────│
│  PK: CompanyCode                │ 1     N │  PK: CompanyCode                    │
│  PK: AccountingDocument         │────────▶│  PK: AccountingDocument             │
│  PK: FiscalYear                 │         │  PK: FiscalYear                     │
│                                 │         │  PK: AccountingDocumentItem          │
│  AccountingDocumentClass (WE/RE)│         │                                     │
│  LedgerGroup (0L)               │         │  DebitCreditCode (S/H)              │
│  PostingDate                    │         │  GLAccount                          │
│  AccountingDocumentType         │         │  AmountInCompanyCodeCurrency         │
│  CompanyCodeCurrency            │         │  AmountInTransactionCurrency         │
│  ExchangeRate                   │         │  PurchasingDocument ─────────┐       │
│                                 │         │  PurchasingDocumentItem ─────┤       │
└─────────────────────────────────┘         │  PurchaseOrderQty            │       │
                                            │  Supplier                    │       │
                                            │  PostingKey                  │       │
                                            │  FinancialAccountType        │       │
                                            │  ProfitCenter                │       │
                                            │  DocumentItemText            │       │
                                            └────────────────────────┬─────┘       
                                                                     │             
                          ┌──────────────────────────────────────────┘             
                          │ FK: PurchasingDocument + PurchasingDocumentItem        
                          ▼                                                        
┌─────────────────────────────────┐         ┌─────────────────────────────────────┐
│  raw_purchaseorder              │         │  raw_purchaseorderitem              │
│  (purchaseorder)                │         │  (purchaseorder)                    │
│─────────────────────────────────│         │─────────────────────────────────────│
│  PK: PurchaseOrder              │ 1     N │  PK: PurchaseOrder                  │
│                                 │────────▶│  PK: PurchaseOrderItem              │
│  CompanyCode                    │         │                                     │
│  Supplier ★                     │         │  OrderQuantity ★                    │
│  DocumentCurrency               │         │  NetAmount                          │
│  PurchaseOrderDate              │         │  PurchaseOrderItemText              │
│  InvoicingParty                 │         │  CompanyCode                        │
│  PurchaseOrderType              │         │  IsCompletelyDelivered              │
└─────────────────────────────────┘         │  IsFinallyInvoiced                  │
                                            │  InvoiceIsExpected                  │
                                            └─────────────────────────────────────┘
                                                         │                         
                                                         │ 1:1                     
                                                         ▼                         
┌─────────────────────────────────┐         ┌─────────────────────────────────────┐
│  raw_supplierinvoice            │         │  raw_purchaseorderaccountassignment │
│  (supplierinvoice)              │         │  (purchaseorder)                    │
│─────────────────────────────────│         │─────────────────────────────────────│
│  PK: SupplierInvoice            │         │  PK: PurchaseOrder                  │
│  PK: FiscalYear                 │         │  PK: PurchaseOrderItem              │
│                                 │         │  PK: AccountAssignmentNumber        │
│  CompanyCode                    │         │                                     │
│  InvoicingParty ★ (Supplier)    │         │  GLAccount ★ (authoritative)        │
│  DocumentCurrency               │         │  CostCenter                         │
│  InvoiceGrossAmount             │         │  ProfitCenter                       │
│  PostingDate                    │         │  PurgDocNetAmount                   │
└─────────────────────────────────┘         └─────────────────────────────────────┘

───── Dimension / Master Data Tables (Enrichment) ────────────────────────────

┌─────────────────────────────────┐         ┌─────────────────────────────────────┐
│  raw_companycode                │         │  raw_supplier                       │
│  (companycode)                  │         │  (supplier)                         │
│─────────────────────────────────│         │─────────────────────────────────────│
│  PK: CompanyCode                │         │  PK: Supplier                       │
│                                 │         │                                     │
│  Currency (CC Currency) ★       │         │  SupplierName ★                     │
│  CompanyCodeName                │         │  SupplierFullName                   │
│  Country                        │         │  BPAddrCityName                     │
│  ChartOfAccounts                │         │  SupplierAccountGroup               │
│                                 │         │                                     │
│  LEFT JOIN ON CompanyCode       │         │  LEFT JOIN ON resolved Supplier     │
│  (line-item enrichment)         │         │  (post-aggregation enrichment)      │
└─────────────────────────────────┘         └─────────────────────────────────────┘

┌─────────────────────────────────┐
│  raw_debitcreditcode            │
│  (journalentryitemcodes)        │
│─────────────────────────────────│
│  PK: DebitCreditCode            │
│                                 │
│  S = Debit (Soll)               │
│  H = Credit (Haben)             │
│                                 │
│  INNER JOIN = validation only    │
└─────────────────────────────────┘

★ = Authoritative source for that field
PK = Primary Key
FK = Foreign Key
1:N = One-to-Many relationship

SUPPLIER RESOLUTION:  supplierinvoice.InvoicingParty → purchaseorder.Supplier → acctgdocitem.Supplier
SUPPLIER NAME:        raw_supplier.SupplierName (LEFT JOIN on resolved Supplier key)
GL ACCOUNT RESOLUTION: purchaseorderaccountassignment.GLAccount → acctgdocitem.GLAccount

Join Structure:
┌──────────────────────────────────────────────────────────────────────┐
│  raw_journalentry (HEADER)              [journalentryheader]         │
│  LedgerGroup='0L', AccountingDocumentClass IN ('WE','RE')            │
│  PostingDate, CompanyCode, AccountingDocument, FiscalYear            │
└─────────────────────────────┬────────────────────────────────────────┘
                              │ INNER JOIN ON
                              │ CompanyCode + AccountingDocument + FiscalYear
                              ▼
┌──────────────────────────────────────────────────────────────────────┐
│  raw_operationalacctgdocitem (LINE ITEMS) [journalentry]             │
│  DebitCreditCode, GLAccount, AmountInCompanyCodeCurrency             │
│  PurchasingDocument, PurchasingDocumentItem, PurchaseOrderQty        │
│  Supplier                                                            │
└─────────────────────────────┬────────────────────────────────────────┘
                              │ LEFT JOINs (line-item enrichment)
              ┌───────────────┼───────────────────────┐
              ▼               ▼                       ▼
┌─────────────────────┐ ┌──────────────────┐ ┌────────────────────────┐
│ raw_supplierinvoice │ │ raw_purchaseorder │ │ raw_purchaseorderitem  │
│ [supplierinvoice]   │ │ [purchaseorder]   │ │ [purchaseorder]        │
│                     │ │                   │ │                        │
│ InvoicingParty ★    │ │ Supplier (fb)     │ │ OrderQuantity ★        │
│ (Supplier AUTH)     │ │ DocumentCurrency  │ │ NetAmount              │
│ ON PO+CompanyCode   │ │ ON PurchaseOrder  │ │ PurchaseOrderItemText  │
└─────────────────────┘ └──────────────────┘ │ ON PO + POItem         │
                                             └────────────────────────┘
              ┌───────────────────────────────────────┐
              ▼                                       ▼
┌──────────────────────────────┐  ┌────────────────────────────────────┐
│ raw_purchaseorderaccount-    │  │ raw_companycode [companycode]       │
│ assignment [purchaseorder]   │  │                                    │
│                              │  │ Currency (CompanyCodeCurrency)      │
│ GLAccount ★ (authoritative)  │  │ CompanyCodeName                    │
│ ON PO + POItem               │  │ ON CompanyCode                     │
└──────────────────────────────┘  └────────────────────────────────────┘
┌──────────────────────────────┐
│ raw_debitcreditcode          │  ★ = Authoritative source
│ [journalentryitemcodes]      │  (fb) = Fallback
│                              │
│ INNER JOIN = validation      │  SUPPLIER RESOLUTION ORDER:
│ ON DebitCreditCode           │  1. supplierinvoice.InvoicingParty
└──────────────────────────────┘  2. purchaseorder.Supplier
                                  3. acctgdocitem.Supplier
         │
         │  GR Aggregation (GROUP BY CompanyCode/PO/POItem)
         ▼
┌──────────────────────────────────────────────────────────────────────┐
│  worklist_raw (Step 3)                                               │
│  gr_agg LEFT JOIN ir_agg ON CompanyCode/PO/POItem                    │
│  + Exposure, Days_Open, USD conversion                               │
└─────────────────────────────┬────────────────────────────────────────┘
                              │ LEFT JOIN (post-aggregation)
                              ▼
              ┌────────────────────────────────────────────────┐
              │ raw_supplier [supplier]                          │
              │                                                  │
              │ SupplierName ★                                   │
              │ LEFT JOIN ON Supplier = resolved Final_Supplier   │
              │ (COALESCE: SI → PO → acctgdocitem)              │
              └────────────────────────────────────────────────┘
  GL ACCOUNT RESOLUTION ORDER:
  1. purchaseorderaccountassignment.GLAccount
  2. acctgdocitem.GLAccount
