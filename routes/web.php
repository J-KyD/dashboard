<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\campaigncontroller;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/




Route::get('/welcome',[campaigncontroller::class , 'welcome']);

Route::view('/absilogin', 'login');

Route::view('/profile', 'profile');

Route::get('/projects', function () {
    return view('projects');
});

Route::get('/announce',[campaigncontroller::class , 'getAnnouncement']);
Route::post('/uploadAnnouncement',[campaigncontroller::class , 'uploadImage']);

Route::post('/updateAnnounce',[campaigncontroller::class , 'updateAnnounce']);
Route::post('/deleteAnnounce',[campaigncontroller::class , 'deleteAnnounce']);

Route::get('/adminaccounts', function () {
    return view('adminaccounts');
});
Route::get('/useraccounts', function () {
    return view('useraccounts');
});

/* User Routes */

Route::get('/userwelcome', function () {
    return view('userwelcome');
});
Route::get('/landing', function () {
    return view('landingpage');
});

Route::get('/adminaccounts',[campaigncontroller::class , 'allAdmin']);
Route::post('/updateAccount',[campaigncontroller::class , 'updateAccount']);
Route::post('/deleteAccount',[campaigncontroller::class , 'deleteAccount']);
Route::post('/updateProject',[campaigncontroller::class , 'updateProject']);
Route::post('/deleteProject',[campaigncontroller::class , 'deleteProject']);



Route::get('/useraccounts',[campaigncontroller::class , 'allUser']);

Route::get('/userdashboard',[campaigncontroller::class , 'allProjectsUser']);

Route::get('/projects',[campaigncontroller::class , 'allProjectsUser']);

Route::get('/campaign',[campaigncontroller::class , 'allITG_UB_delivery']);

Route::get('/projects',[campaigncontroller::class , 'allProjects']);

/* CAMPAIGNS */



Route::get('/birthdays',[campaigncontroller::class , 'birthdays']);
Route::get('/users',[campaigncontroller::class , 'users']);

Route::get('/overtime', function () {
    return view('overtime');
});

Route::get('/month', function () {
    return view('month');
});

Route::get('/admin', function () {
    return view('admin');
});

Route::get('/coca', function () {
    return view('coca');
});



/* CRUD */

Route::post('/updateclient ', [campaigncontroller::class , 'updateClient']);

Route::post('/addProject', [campaigncontroller::class , 'addProject']);

Route::post('/addemployee', [campaigncontroller::class , 'addemployee']);

Route::post('/deleteclient ', [campaigncontroller::class , 'deletecampaign']);

/*Second CRUD */
Route::post('/updateemployee ', [campaigncontroller::class , 'updateEmployee']);
Route::post('/deleteemployee ', [campaigncontroller::class , 'deleteEmployee']);


//* Client Signup 

Route::get('/signup', function () {
    return view('signup');
});

Route::get('/faq', function () {
    return view('faqs');
});
Route::get('/login', function () {
    return view('login');
});

Route::post('/signup', [campaigncontroller::class , 'signup']);
Route::post('/change', [campaigncontroller::class , 'changePass']);
Route::post('/adminsignup', [campaigncontroller::class , 'adminsignup']);
Route::post('/usersignup', [campaigncontroller::class , 'usersignup']);

Route::post('/login', [campaigncontroller::class , 'userLogin']);

//Logout
Route::get('/campaignall', [campaigncontroller::class , 'campaignAll']);

Route::get('/adminLogout', [campaigncontroller::class , 'export'])->name('adminlogout');




// Reroutes (For Admin)


Route::get('/', function () {
    return view('login');
});



//User Routes

Route::get('/userprofile', function () {
    return view('userprofile');
});

//change

