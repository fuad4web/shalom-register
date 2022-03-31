
</div>


    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- DataTables -->
    <script src="js/jquery.dataTables.js"></script>
    <script src="js/dataTables.bootstrap4.js"></script>
    
    <script type="text/javascript">
        $(document).ready(function() {

            $('#weather').change(function() {
                var valuess = $(this).val();
            //   alert(valuess);  return;
                $.ajax({
                    url : "fetch.php",
                    method : "POST",
                    data: {valuess: valuess},
                    success:function(data) {
                        $('#myopinion').append(data);
                    }
                });
             
            });

            $(function () {
                $("#attendance_table").DataTable();
                $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": true,
                "ordering": true,
                "info": true,
                "autoWidth": true,
                });
            });
        });
    </script>
</body>
</html>
