<?php

require_once("views/includes/header.php");
require_once("views/includes/sidebar.php");
require_once("views/includes/topbar.php");



switch($page)
{
    case "main_table":
        include("pages/ail/main_table.php");
    break;


    case "meeting_ail_table":
        include("pages/meeting_ail/meeting_ail_table.php");
    break;


    case "meeting_ail_add":
        include("pages/meeting_ail/meeting_ail_add.php");
    break;

    case "meeting_ail_edit":
        include("pages/meeting_ail/meeting_ail_edit.php");
    break;

    case "meeting_ail_delete":
        include("pages/meeting_ail/meeting_ail_delete.php");
    break;

    case "meeting_ail_complete":
        include("pages/meeting_ail/meeting_ail_complete.php");
    break;


    //users
    case "user_profile":
        include("pages/account/user_profile.php");
    break;

    case "user_list":
        include("pages/users/user_list.php");
    break;

    case "user_form":
        include("pages/account/user_form.php");
    break;

    case "user_view":
        include("pages/users/user_view.php");
    break;

    case "user_add":
        include("pages/users/user_add.php");
    break;

    case "new_user_form":
        include("pages/users/new_user_form.php");
    break;

    case "user_update":
        include("pages/users/user_update.php");
    break;

    case "user_delete":
        include("pages/users/user_delete.php");
    break;

    //profiles
    case "profile_update":
        include("pages/profile/profile_update.php");
    break;


    //lists
    case "ail_list":
        include("pages/ail/ail_list.php");
    break;

    case "ail_add":
        include("pages/ail/ail_add.php");
    break;

    case "ail_view":
        include("pages/ail/ail_view.php");
    break;

    case "ail_edit":
        include("pages/ail/ail_edit.php");
    break;
    
    case "ail_delete":
        include("pages/ail/ail_delete.php");
    break;

    case "ail_report":
        include("pages/ail/ail_report.php");
    break;

    case "ail_complete":
        include("pages/ail/ail_complete.php");
    break;


    //groups

    case "project_list":
        include("pages/projects/project_list.php");
    break;

    case "project_list_lean":
        include("pages/projects/project_list_lean.php");
    break;

    case "project_add":
        include("pages/projects/project_add.php");
    break;

    case "project_edit":
        include("pages/projects/project_edit.php");
    break;

    case "project_delete":
        include("pages/projects/project_delete.php");
    break;

    case "project_complete":
        include("pages/projects/project_complete.php");
    break;

    case "project_view":
        include("pages/projects/project_view.php");
    break;

    case "action_add":
        include("pages/actions/action_add.php");
    break;

    case "action_edit":
        include("pages/actions/action_edit.php");
    break;

    case "action_add_update":
        include("pages/actions/action_add_update.php");
    break;

    case "action_add_file":
        include("pages/actions/action_add_file.php");
    break;

    case "action_progress":
        include("pages/actions/action_progress.php");
    break;


    case "action_add_file2":
        include("pages/actions/action_add_file2.php");
    break;

    case "view_update":
        include("pages/updates/view_update.php");
    break;

    case "report_active_list":
        include("pages/reports/report_active_list.php");
    break;

    case "report_historic_list":
        include("pages/reports/report_historic_list.php");
    break;

    case "report":
        include("pages/reports/report.php");
    break;

    case "report_tier":
        include("pages/reports/report_tier.php");
    break;



    case "report_tier_active":
        include("pages/reports/report_tier_active.php");
    break;


    case "tier_list":
        include("pages/tiers/tier_list.php");
    break;


    case "tier_pending":
        include("pages/tiers/tier_pending.php");
    break;

    case "tier_view":
        include("pages/tiers/tier_view.php");
    break;

    case "tier_action_add":
        include("pages/tier_actions/tier_action_add.php");
    break;

    case "tier_view_update":
        include("pages/tier_actions/tier_view_update.php");
    break;

    case "tier_action_progress":
        include("pages/tier_actions/tier_action_progress.php");
    break;

    case "tier_action_add_file":
        include("pages/tier_actions/tier_action_add_file.php");
    break;

    
    case "tier_action_edit":
        include("pages/tier_actions/tier_action_edit.php");
    break;


    case "edit_action_update":
        include("pages/tier_action_updates/edit_action_update.php");
    break;



    //import data
    case "andon_sites":
        include("pages/site/site_list.php");
    break;

    case "site_add":
        include("pages/site/site_add.php");
    break;

    case "site_edit":
        include("pages/site/site_edit.php");
    break;

    case "site_delete":
        include("pages/site/site_delete.php");
    break;


    case "andon_areas":
        include("pages/area/area_list.php");
    break;

    case "area_add":
        include("pages/area/area_add.php");
    break;

    case "area_edit":
        include("pages/area/area_edit.php");
    break;

    case "area_delete":
        include("pages/area/area_delete.php");
    break;


    case "andon_machines":
        include("pages/machines/machines.php");
    break;

    case "importcsvpersonnel":
        include("pages/data/importcsvpersonnel.php");
    break;

    //cells
    case "cells":
        include("pages/data/cells.php");
    break;

    //cells
    case "ops":
        include("pages/data/ops.php");
    break;

    //cells - operations menu
    case "cell_op":
        include("pages/data/cell_op.php");
    break;

    case "assign_sop_menu":
        include("pages/data/assign_sop_menu.php");
    break;

    case "assign_sop":
        include("pages/data/assign_sop.php");
    break;

    case "trained":
        include("pages/view/trained.php");
    break;

    case "trained_supervisor":
        include("pages/view/trained_supervisor.php");
    break;

    case "manual":
        include("pages/usermanual/manual.php");
    break;



    //default page
    default:
        include("pages/default.php");
    break;
}






require_once("views/includes/footer.php"); ?>


