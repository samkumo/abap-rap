*&---------------------------------------------------------------------*
*& Include z02_readme
*&---------------------------------------------------------------------*
*   Task description
*
*   Managed transactional app
*
*   1. Create Z-Table for tasks which should contain the following fields: [ ID, Description, Status, Due Date }
*   2. Create the necessary CDS views
*   3. Expose the contents through ODataV4 service
*   4. Add behavior definition to enable CREATE, UPDATE and DELETE operations
*   5. Add determination that automatically sets Status to 'Open' when new task is created
*   6. Validation to check that Due Date is always in the future


*   NOTES:
*   For CREATE and UPDATE operations, ODataV2 must be used in non-draft scenario
