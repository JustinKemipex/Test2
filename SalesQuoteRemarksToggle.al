pageextension 50303 SalesQuoteRemarksToggle extends "Sales Quote"
{
    actions
    {
        addlast(Processing)
        {
            action(ShowRemarksAction)
            {
                ApplicationArea = All;
                Caption = 'Show Remarks';
                Image = View;
                Promoted = true;
                PromotedCategory = Process;
                Visible = not ShowRemarks;

                trigger OnAction()
                begin
                    ShowRemarks := true;
                    CurrPage.Update(false);
                end;
            }

            action(HideRemarksAction)
            {
                ApplicationArea = All;
                Caption = 'Hide Remarks';
                Image = View;
                Promoted = true;
                PromotedCategory = Process;
                Visible = ShowRemarks;

                trigger OnAction()
                begin
                    ShowRemarks := false;
                    CurrPage.Update(false);
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        ShowRemarks := false;
    end;

    var
        ShowRemarks: Boolean;
}