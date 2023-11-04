report 50000 MultiLevelReport
{
    ApplicationArea = All;
    Caption = 'MultiLevelReport';
    UsageCategory = Lists;
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Name; Name)
            {
            }

            dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = field("No.");

                dataitem("Detailed Cust. Ledg. Entry"; "Detailed Cust. Ledg. Entry")
                {
                    DataItemLink = "Cust. Ledger Entry No." = field("Entry No.");
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
