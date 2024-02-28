tableextension 50118 CustomerExt extends Customer
{
    fields
    {
        field(50100; "Table ID"; Integer)
        {
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = CONST(Table));
            DataClassification = SystemMetadata;
        }
        field(50102; "Field 1"; Text[250])
        {
            DataClassification = SystemMetadata;
        }
        field(50103; "Field 2"; Text[250])
        {
            DataClassification = SystemMetadata;
        }
        field(50104; "Field 3"; Text[250])
        {
            DataClassification = SystemMetadata;
        }
        field(50105; "Field 4"; Text[250])
        {
            DataClassification = SystemMetadata;
        }
        field(50106; "Field 5"; Text[250])
        {
            DataClassification = SystemMetadata;
        }
        field(50107; "Field 6"; Text[250])
        {
            DataClassification = SystemMetadata;
        }
        field(50108; "Field 7"; Text[250])
        {
            DataClassification = SystemMetadata;
        }
        field(50109; "Field 8"; Text[250])
        {
            DataClassification = SystemMetadata;
        }
        field(50110; "Field 9"; Text[250])
        {
            DataClassification = SystemMetadata;
        }
        field(50111; "Field 10"; Text[250])
        {
            DataClassification = SystemMetadata;
        }
    }
}

pageextension 50119 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addafter(General)
        {
            group(Lookup)
            {
                field("Table ID"; Rec."Table ID")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        Rec."Field 1" := '';
                        Rec."Field 2" := '';
                        Rec."Field 3" := '';
                        Rec."Field 4" := '';
                        Rec."Field 5" := '';
                        Rec."Field 6" := '';
                        Rec."Field 7" := '';
                        Rec."Field 8" := '';
                        Rec."Field 9" := '';
                        Rec."Field 10" := '';
                    end;

                    trigger OnAssistEdit()
                    var
                        RecordSelection: Codeunit "Record Selection";
                        RecordSelectionBuffer: Record "Record Selection Buffer";
                        RecRef: RecordRef;
                        MaximumCount: Integer;
                    begin
                        RecordSelectionBuffer.Reset();
                        RecordSelectionBuffer.DeleteAll();
                        MaximumCount := 0;

                        RecRef.Open(Rec."Table ID");
                        MaximumCount := RecRef.Count;
                        if RecordSelection.Open(Rec."Table ID", MaximumCount, RecordSelectionBuffer) then begin
                            Rec."Field 1" := RecordSelectionBuffer."Field 1";
                            Rec."Field 2" := RecordSelectionBuffer."Field 2";
                            Rec."Field 3" := RecordSelectionBuffer."Field 3";
                            Rec."Field 4" := RecordSelectionBuffer."Field 4";
                            Rec."Field 5" := RecordSelectionBuffer."Field 5";
                            Rec."Field 6" := RecordSelectionBuffer."Field 6";
                            Rec."Field 7" := RecordSelectionBuffer."Field 7";
                            Rec."Field 8" := RecordSelectionBuffer."Field 8";
                            Rec."Field 9" := RecordSelectionBuffer."Field 9";
                            Rec."Field 10" := RecordSelectionBuffer."Field 10";
                            Rec.Modify(true);
                        end;
                    end;
                }
                field("Field 1"; Rec."Field 1")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Field 2"; Rec."Field 2")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Field 3"; Rec."Field 3")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Field 4"; Rec."Field 4")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Field 5"; Rec."Field 5")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Field 6"; Rec."Field 6")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Field 7"; Rec."Field 7")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Field 8"; Rec."Field 8")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Field 9"; Rec."Field 9")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Field 10"; Rec."Field 10")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }
}
