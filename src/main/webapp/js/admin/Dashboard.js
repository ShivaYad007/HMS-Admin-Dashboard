document.addEventListener('DOMContentLoaded', () => {
    const profileLink = document.getElementById('my-profile');
    const logoutLink = document.getElementById('log-out');
    const dashboardLink = document.getElementById('dashboard-link');
    const profileDetailsSection = document.getElementById('profile-details');
    const cardsSection = document.getElementById('dashboard-section');
	const addHospital = document.getElementById('add-hospital');
	const addAdmin = document.getElementById('add-admin');
	const showAdmin = document.getElementById('show-admin');
	const showAdminData = document.getElementById('show-admin-data');
	const updateAdmin = document.getElementById('update-admin');
	const updateAdminForm = document.getElementById('update-admin-form');
	const addHospitalForm = document.getElementById('add-hospital-form');
	const addAdminForm = document.getElementById('add-admin-form');
	const updateHospital = document.getElementById('update-hospital');
	const updateHospitalForm = document.getElementById('update-hospital-form');
	const showHospital = document.getElementById('show-hospital');
	const showHospitalData = document.getElementById('show-hospital-data');

    profileLink.addEventListener('click', (e) => {
        e.preventDefault();
        profileDetailsSection.style.display = 'block';
        cardsSection.style.display = 'none';
		addHospitalForm.style.display = 'none';
	    updateHospitalForm.style.display = 'none';
		updateAdminForm.style.display='none';
    });
	addAdmin.addEventListener('click', (e) => {
	     e.preventDefault();
		 addAdminForm.style.display='block';
	     addHospitalForm.style.display = 'none';
	     cardsSection.style.display = 'none';
		 updateHospitalForm.style.display = 'none';
		 showHospitalData.style.display = 'none';
		 updateAdminForm.style.display='none';
	 });
	 	 showAdmin.addEventListener('click', (e) => {
	       e.preventDefault();
		   showAdminData.style.display = 'block';
	 	  showHospitalData.style.display = 'none';
	       cardsSection.style.display = 'none';
	 	  addHospitalForm.style.display = 'none';
	 	  updateHospitalForm.style.display = 'none';
		  updateAdminForm.style.display='none';
	   
	   });
	    updateAdmin.addEventListener('click', (e) => {
	       e.preventDefault();
		   updateAdminForm.style.display='block';
	      showAdminData.style.display = 'none';
	     showHospitalData.style.display = 'none';
	       cardsSection.style.display = 'none';
	     addHospitalForm.style.display = 'none';
	     updateHospitalForm.style.display = 'none';

	   });
	   
	   	
	addHospital.addEventListener('click', (e) => {
	     e.preventDefault();
	     addHospitalForm.style.display = 'block';
	     cardsSection.style.display = 'none';
		 updateHospitalForm.style.display = 'none';
		 showHospitalData.style.display = 'none';
		 addAdminForm.style.display='none';
		 updateAdminForm.style.display='none';
	 });

	 updateHospital.addEventListener('click', (e) => {
	      e.preventDefault();
		  updateHospitalForm.style.display = 'block';
	      cardsSection.style.display = 'none';
		  addHospitalForm.style.display = 'none';
		  showHospitalData.style.display = 'none';
		  addAdminForm.style.display='none';
		  updateAdminForm.style.display='none';
	  });
	  showHospital.addEventListener('click', (e) => {
	        e.preventDefault();
	  	  showHospitalData.style.display = 'block';
	        cardsSection.style.display = 'none';
	  	  addHospitalForm.style.display = 'none';
	  	  updateHospitalForm.style.display = 'none';
		  updateAdminForm.style.display='none';
		  
	    });	

    logoutLink.addEventListener('click', (e) => {
        e.preventDefault();
        window.location.href = '../../jsp/admin/Login.jsp'; // Redirect to login page
    });

    dashboardLink.addEventListener('click', (e) => {
        e.preventDefault();
        cardsSection.style.display = 'flex'; // or 'block', depending on your layout
		addHospitalForm.style.display = 'none';
		updateHospitalForm.style.display = 'none';
		profileDetailsSection.style.display = 'none';
		addAdminForm.style.display='none';
		updateAdminForm.style.display='none';
		
    });
});
