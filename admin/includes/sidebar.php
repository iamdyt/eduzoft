      <!-- ========== Left Sidebar Start ========== -->
      <div class="vertical-menu">

<div data-simplebar class="h-100">

    <!--- Sidemenu -->
    <div id="sidebar-menu">
        <!-- Left Menu Start -->
        <ul class="metismenu list-unstyled" id="side-menu">
            <li class="menu-title">Menu</li>

            <li>
                <a href="users.php" class="waves-effect">
                    <i class="mdi mdi-home-variant-outline"></i>
                    <span>Dashboard</span>
                </a>
            </li>

            <li>
                <a href="all_users.php" class=" waves-effect">
                    <i class="mdi mdi-account-switch"></i>
                    <span>Users</span>
                </a>
            </li>

            <?php if ($_SESSION['role'] == 'super'){  ?>
                <li>
                    <a href="staff.php" class=" waves-effect">
                        <i class="mdi mdi-account-circle"></i>
                        <span>Staff</span>
                    </a>
                </li>
            <?php } ?>
            
            <li>
                <a href="archives.php" class=" waves-effect">
                    <i class="mdi mdi-cube"></i>
                    <span>Archives</span>
                </a>
            </li>

            <li>
                <a href="logout.php" class=" waves-effect">
                    <i class="mdi mdi-power"></i>
                    <span>Logout</span>
                </a>
            </li>

        </ul>
    </div>
    <!-- Sidebar -->
</div>
</div>
<!-- Left Sidebar End -->